import 'package:app/pages/mchezo_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/mchezo.dart';
import '../providers/mchezo_provider.dart';
import 'mchezo_detail_pagee.dart';

class MchezoPage extends StatelessWidget {
  const MchezoPage({super.key});
  static const routeName = '/mchezoPage';

  @override
  Widget build(BuildContext context) {
    final mchezoProvider = Provider.of<MchezoProvider>(context);
    final mchezoList = mchezoProvider.addedGames;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sevan'),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: mchezoList.isEmpty
          ? Center(
              child: Text('Hamna mchezo kwa sasa'),
            )
          : ListView.builder(
              itemCount: mchezoList.length,
              itemBuilder: (ctx, index) {
                final mchezo = mchezoList[index];
                return MchezoListItem(mchezo); // Use the custom widget
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show the game creation form when the FAB is clicked
          _showGameCreationDialog(context, mchezoProvider);
        },
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  // Function to show the game creation form dialog
  void _showGameCreationDialog(BuildContext context, MchezoProvider mchezoProvider) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return GameCreationDialog(mchezoProvider);
      },
    );
  }
}

class GameCreationDialog extends StatefulWidget {
  final MchezoProvider mchezoProvider;

  GameCreationDialog(this.mchezoProvider);

  @override
  _GameCreationDialogState createState() => _GameCreationDialogState();
}

class _GameCreationDialogState extends State<GameCreationDialog> {
  String gameName = '';
  String days = '';
  String participants = '';
  String contributions = '';
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Create a Rosca'),
      content: isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Add your form fields here
                  TextField(
                    decoration: InputDecoration(labelText: 'Game Name'),
                    onChanged: (value) {
                      gameName = value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Days'),
                    onChanged: (value) {
                      days = value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Participants'),
                    onChanged: (value) {
                      participants = value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Contributions'),
                    onChanged: (value) {
                      contributions = value;
                    },
                  ),
                  // Add more form fields as needed
                ],
              ),
            ),
      actions: <Widget>[
        TextButton(
          child: Text(
            'Cancel',
            style: TextStyle(
              color: Colors.green, // Set the text color to green
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text(
            'Create',
            style: TextStyle(
              color: Colors.green, // Set the text color to green
            ),
          ),
          onPressed: () async {
            setState(() {
              isLoading = true;
            });

            // Create a new game using the provided values
            Mchezo newGame = Mchezo(
              id: DateTime.now().toString(), // Generate a unique ID
              name: gameName,
              days: int.tryParse(days) ?? 0,
              participants: int.tryParse(participants) ?? 0,
              contributions: double.tryParse(contributions) ?? 0.0,
              imageUrl: '', // Provide an image URL if needed
            );

            // Simulate a delay (replace this with actual data submission)
            await Future.delayed(Duration(seconds: 2));

            // Add the new game to the provider
            widget.mchezoProvider.addRosca(newGame);

            setState(() {
              isLoading = false;
            });

            // Close the dialog
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class MchezoListItem extends StatelessWidget {
  final Mchezo mchezo;

  MchezoListItem(this.mchezo);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushNamed( MchezoDetailPagee.routeName);
        },
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(mchezo.imageUrl),
        ),
        title: Text(
          mchezo.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Participants: ${mchezo.participants}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Contributions: ${mchezo.contributions}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Days: ${mchezo.days}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
