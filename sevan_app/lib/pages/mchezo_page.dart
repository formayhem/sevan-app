import 'package:flutter/material.dart';

class MchezoPage extends StatelessWidget {
  const MchezoPage({super.key});
  static const routeName = '/mchezoPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sevan'),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: const Center(
            child: Text('hamna mchezo kwa sasa'),
          ),
        
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your action here
          },
          backgroundColor: Colors.green,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      
    );
  }
}
