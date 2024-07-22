import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/providers/mchezo_provider.dart';

class MchezoDetailPage extends StatelessWidget {
  const MchezoDetailPage({Key? key});

  static const routeName = '/MchezoDetailPage';

  @override
  Widget build(BuildContext context) {
    final mchezoId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedMchezo = Provider.of<MchezoProvider>(
      context,
      listen: false,
    ).findById(mchezoId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sevan'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 290, // Adjust the card height
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  loadedMchezo.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          'Mchezo',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          loadedMchezo.name,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'WA-TU',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          loadedMchezo.participants.toString(),
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'KIASI',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          loadedMchezo.contributions.toString(),
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'SIKU',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          loadedMchezo.days.toString(),
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //const SizedBox(height: 2.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<MchezoProvider>(context, listen: false)
                      .addRosca(loadedMchezo);

                  // Show a snackbar to indicate that the user has joined the game
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Umefanikiwa kujiunga!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                child: const Text('CHEZA MCHEZO'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
