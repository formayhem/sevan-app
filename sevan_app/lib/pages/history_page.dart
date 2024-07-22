import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/participant_contribution_provider.dart';
import 'package:intl/intl.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});
   static const routeName = '/history';

  @override
  Widget build(BuildContext context) {
    final contributionData = Provider.of<ParticipantContributionProvider>(context);
    final contributions = contributionData.contributions;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Historia'),
      ),
      body: contributions.isEmpty
          ? const Center(
              child: Text('No contributions yet.'),
            )
          : ListView.builder(
              itemCount: contributions.length,
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 5,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text('\$${contributions[index].amount.toStringAsFixed(2)}'),
                        ),
                      ),
                    ),
                    title: Text(
                      contributions[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      DateFormat.yMMMd().format(contributions[index].contributionDate),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
