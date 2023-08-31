import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/app_drawer.dart';

import '../providers/mchezo_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    final mchezoProvider = Provider.of<MchezoProvider>(context);
    final roscas = mchezoProvider.roscas;
    final List<Map<String, dynamic>> drawerItems = [
      {'title': 'Wasifu', 'icon': Icons.person},
      {'title': 'Michezo', 'icon': Icons.sports_soccer},
      {'title': 'Takwimu', 'icon': Icons.bar_chart},
      {'title': 'Kijumbe', 'icon': Icons.message},
      {'title': 'Mpangilio', 'icon': Icons.settings},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sevan'),
        backgroundColor: Colors.green,
        elevation: 0,
      ),

      drawer: AppDrawer(drawerItems: drawerItems),
      body: Column(
        children: [
          Container(
            width: 400,
            color: Color.fromARGB(255, 73, 139, 74), // Change to green
            padding: const EdgeInsets.all(32.0), // Increase padding
            child: const Text(
              'Promotional Banner',
              style: TextStyle(
                  color: Colors.white, fontSize: 24.0), // Increase font size
            ),
          ),
          
          const Text(
            'Michezo Iliyopo',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: roscas.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          roscas[index]
                              .imageUrl, // Image URL from Rosca instance
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 120.0,
                        ),
                      ),
                      Text(
                        roscas[index].name, // Title from Rosca instance
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


