import '../providers/mchezo.dart';
import 'package:flutter/material.dart';

class MchezoDetailPagee extends StatelessWidget {
  final Mchezo mchezo;
  static const routeName = '/mchezo';

  MchezoDetailPagee(this.mchezo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Michezo'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          // Card to display game details
          Card(
            margin: EdgeInsets.all(10),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Game Summary',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'kiasi kilicholipwa:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Tsh 0',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kiasi kilichobaki:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Tsh 0',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Siku zilizobaki',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Receivable Amount:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Tsh 0',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Card to display members
          Card(
            margin: EdgeInsets.all(10),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wahusika',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('lib/Images/avatar1.png'),
                    ),
                    title: Text(
                      'Aisha Mutaligwa',
                      style: TextStyle(fontSize: 16),
                    ),
                    subtitle: Text(
                      'Kijumbe',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  // ListTile(
                  //   leading: CircleAvatar(
                  //     backgroundImage: AssetImage('lib/Images/avatar2.png'),
                  //   ),
                  //   title: Text(
                  //     'John Doe',
                  //     style: TextStyle(fontSize: 16),
                  //   ),
                  // ),
                  // Add more members here as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
