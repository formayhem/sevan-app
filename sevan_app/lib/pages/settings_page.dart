import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  static const routeName = '/settingsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Mpanfilio'),
      ),

      body: const Center(
        child: Text('Mpangilio'),
      ),
    );
  }
}