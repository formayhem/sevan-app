import 'package:flutter/material.dart';



class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';

  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Profile'),
      actions: [
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Add edit functionality here
          },
        ),
      ],
      backgroundColor: Colors.green,
    ),
    body: Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 80,
            backgroundColor: Colors.green,
            child: Icon(
              Icons.person,
              size: 100,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Aisha Mutaligwa',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'aishamutaligwa@gmail.com',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          Text(
            '0743123421',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(),
            ),
            child: Column(
              children: [
                const Divider(),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.black),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 16,
                     // fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    // Add settings functionality here
                  },
                ),
                const Divider(),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.black),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 16,
                     // fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    // Add logout functionality here
                  },
                ),
                const Divider(),
                ListTile(
                  leading: Icon(Icons.language, color: Colors.black),
                  title: Text(
                    'Language',
                    style: TextStyle(
                      fontSize: 16,
                   //   fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    // Add language selection functionality here
                  },
                ),
               const Divider(),
                ListTile(
                  leading: Icon(Icons.help, color: Colors.black),
                  title: Text(
                    'Help',
                    style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    // Add help functionality here
                  },
                ),
                const Divider(),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

}