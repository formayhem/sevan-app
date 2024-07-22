import 'package:flutter/material.dart';
import './Login_page/login_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key});
  static const routeName = '/settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _loggingOut = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          ListView(
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
                onTap: _loggingOut ? null : _handleLogout,
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
          if (_loggingOut)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }

  void _handleLogout() {
    setState(() {
      _loggingOut = true; // Start the loading indicator
    });

    // Simulate a delay of 6 seconds using Future.delayed
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the logout route
      Navigator.of(context).pushNamed(LoginPage.routeName);
    });
  }
}
