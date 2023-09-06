import 'package:app/providers/mchezo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MchezoDetailPage extends StatelessWidget {
  const MchezoDetailPage({super.key});

  static const routeName = '/MchezoDetailPage';

  @override
  Widget build(BuildContext context) {
    final mchezoId =
        ModalRoute.of(context)!.settings.arguments as String; //is the id
    final loadedMchezo = Provider.of<MchezoProvider>(
      context,
      listen: false,
    ).findById(mchezoId);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sevan'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10,),
           Container(
              height: 350,
              width: 100,
               padding: const EdgeInsets.all(12),
               decoration: const BoxDecoration(
              
               ),
              
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    loadedMchezo.imageUrl, // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              
            ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Mchezo: Mchezo wa meza na viti', style: TextStyle(fontSize: 18)),
                Text('WA-TU: 10', style: TextStyle(fontSize: 18)),
                Text('KIASI: 10000', style: TextStyle(fontSize: 18)),
                Text('SIKU: 30', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          const SizedBox(height: 140.0), // Adjust spacing as needed
          Container(
            alignment: Alignment.center,
  //            decoration: BoxDecoration(
  //   color: Colors.green, // Set the background color
  //   borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
  // ),
            child: ElevatedButton(
          
              onPressed: () {
                // Add your button's action here
              },
               style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Set the background color
            ),
              child: const Text(
                
                'CHEZA MCHEZO',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
