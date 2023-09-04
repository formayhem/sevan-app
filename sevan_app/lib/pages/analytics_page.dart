import 'package:flutter/material.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});
  static const routeName = '/analyticsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Takwimu'),
      ),

      body: const Center(
        child: Text('Takwimu'),
      ),
    );
  }
}