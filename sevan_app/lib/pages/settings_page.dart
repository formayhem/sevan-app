import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  static const routeName = '/settings';

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            title: Text('Notifications'),
            subtitle: Text('Receive updates and notifications'),
            trailing: Switch(
              value: true, // Change to the actual value
              activeColor: Colors.green,
              onChanged: (bool value) {
                // Handle the switch change here
              },
            ),
            
          ),
          ListTile(
            title: Text('Privacy'),
            subtitle: Text('Control your privacy settings'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to the privacy settings screen
            },
          ),
          ListTile(
            title: Text('Account'),
            subtitle: Text('Manage your account settings'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to the account settings screen
            },
          ),
          ListTile(
            title: Text('Theme'),
            subtitle: Text('Choose your app theme'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to the theme settings screen
            },
          ),
          Divider(),
          ListTile(
            title: Text('About'),
            subtitle: Text('Learn more about the app'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to the about screen
            },
          ),
          ListTile(
            title: Text('Feedback'),
            subtitle: Text('Send us your feedback and suggestions'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // Navigate to the feedback screen
            },
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              // Handle logout action here
            },
          ),
        ],
      ),
    );
  }
}