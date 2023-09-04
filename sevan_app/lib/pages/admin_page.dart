import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});
  static const routeName = '/adminPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Kijumbe'),
      ),

      body: const Center(
        child: Text('Kijumbe'),
      ),
    );
  }
}