import 'package:app/pages/settings_page.dart';
import 'package:flutter/material.dart';
import '../pages/mchezo_page.dart';
import '../pages/profile_page.dart';

class AppDrawer extends StatelessWidget {
   AppDrawer({
    super.key,
    required this.drawerItems,
  });

  final List<Map<String, dynamic>> drawerItems;
   // Define routes for each item
  final Map<String, String> itemRoutes = {
    'Wasifu': ProfilePage.routeName,
    'Michezo': MchezoPage.routeName,
    'Item 3': '/item3',
     'Item 4': '/item2',
    'Mpangilio': SettingsPage.routeName,
    // Add more items and their routes as needed
  };

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(

            accountName: Text('Aisha Mutaligwa'),
            accountEmail: Text('derickgerorge@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1509099955921-f0b4ed0c175c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1472&q=80.png'),
              
            ),
            decoration: BoxDecoration(
            color: Colors.green, // Set the background color to green
          ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: drawerItems.length,
              separatorBuilder: (context, index) =>
                  const Divider(), // Divider between items
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(drawerItems[index]['icon']),
                  title: Text(drawerItems[index]['title']),
                  onTap: () {
                    
 // Handle item tap by pushing the associated route
                    final title = drawerItems[index]['title'];
                    final route = itemRoutes[title];
                    if (route != null) {
                      Navigator.of(context).pushNamed(route);
                    }
                    
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}