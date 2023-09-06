import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/app_drawer.dart';

import '../providers/mchezo_provider.dart';
import 'mchezo_detail_page.dart';

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
          const SizedBox(height: 15),

          Container(
            width: 370,
            height: 150,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'lib/Images/furniture.png',
                    fit: BoxFit
                        .cover, // Use BoxFit.cover to maintain aspect ratio and fill the container
                    width: double
                        .infinity, // prevents clipping becauses automatically this shouldn't be used
                    //as takes the whole space preventing clipping that is why you have used boxfit.cover
                   //ili itake default ya container uidefinr wewe unaprevent clipping
                    // height: double.infinity,
                  ),
                ),
                const Positioned(
                  top: 16.0, // Adjust the position of the text vertically
                  left: 16.0, // Adjust the position of the text horizontally
                  child: Text(
                    'Ofa Mpya',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold
                        // height: double.infinity,u,
                        ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),
          const Text(
            'Michezo Iliyopo',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          // Expanded(
          //   child:
          Expanded(
              child: GridView.builder(
            padding: EdgeInsets.all(15.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 11,
              mainAxisSpacing: 13,
            ),
            itemCount: roscas.length,
            itemBuilder: (context, i) {
              return
                  // Container(
                  //   margin: const EdgeInsets.all(8.0),

                  //     child: Expanded(

                  //       child:
                  ChangeNotifierProvider.value(
                value: roscas[i],
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SizedBox(
                        height: 150,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              MchezoDetailPage.routeName,
                              arguments: roscas[i].id,
                            );
                          },
                          child: Image.network(
                            roscas[i].imageUrl, // Image URL from Rosca instance
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      roscas[i].name, // Title from Rosca instance
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              );
              //     ),
              // );
            },
          )),
          // ),
        ],
      ),
    );
  }
}
