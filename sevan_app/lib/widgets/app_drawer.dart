import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.drawerItems,
    required this.onItemTap,
  });

  final List<Map<String, dynamic>> drawerItems;
  final Function(int) onItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(

            accountName: Text('Aisha Mutaligwa'),
            accountEmail: Text('mutaligwa@gmail.com'),
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
                    onItemTap(index);
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