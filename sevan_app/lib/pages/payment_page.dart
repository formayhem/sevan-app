import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/models/participant_contribution.dart';
import '../providers/participant_contribution_provider.dart';

class PaymentPage extends StatefulWidget {
  static const routeName = '/payment';

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController _gameNameController = TextEditingController();
  final TextEditingController _paymentAmountController = TextEditingController();
  final TextEditingController _bankAccountController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _gameNameController.dispose();
    _paymentAmountController.dispose();
    _bankAccountController.dispose();
    super.dispose();
  }

  void _showAlertDialog(BuildContext context, String message) async {
    await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Payment Confirmation'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 1.0), // Add spacing
            Image.asset(
              'lib/Images/success.png', // Replace 'your_image.png' with the actual asset path
              width: 200, // Set the width as per your preference
              height: 200, // Set the height as per your preference
            ),
            Text(message),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );

    // Unfocus the text fields and prevent the keyboard from appearing
    FocusScope.of(context).requestFocus(FocusNode());
  }

  void _clearFields() {
    _gameNameController.clear();
    _paymentAmountController.clear();
    _bankAccountController.clear();
  }

  Future<void> _handleLipia() async {
    setState(() {
      _isLoading = true;
    });

    // Unfocus the text fields and prevent the keyboard from appearing
    FocusScope.of(context).unfocus();

    String gameName = _gameNameController.text;
    double paymentAmount =
        double.tryParse(_paymentAmountController.text) ?? 0.0;
    String bankAccountNumber = _bankAccountController.text;

    // Create a new contribution object
    ParticipantContribution contribution = ParticipantContribution(
      id: DateTime.now().toString(),
      title: gameName,
      amount: paymentAmount,
      contributionDate: DateTime.now(),
      cardNumber: 0,
    );

    // Simulate a delay of 2 seconds using Future.delayed
    await Future.delayed(Duration(seconds: 4));

    Provider.of<ParticipantContributionProvider>(context, listen: false)
        .addContribution(contribution);

    setState(() {
      _isLoading = false;
    });

    _showAlertDialog(context, 'Payment made successfully');
    _clearFields();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lipia Mchezo', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        elevation: 4,
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _gameNameController,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Name of the Game',
                    labelStyle:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _paymentAmountController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Payment Amount (\$)',
                    labelStyle:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _bankAccountController,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Bank Account Number',
                    labelStyle:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: _isLoading ? null : _handleLipia, // Disable button when loading
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    'Lipia',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          if (_isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 16.0),
                    Text(
                      'Tunaomba usubiri\nmalipo yako yanashughulikiwa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:app/models/participant_contribution.dart';
// import '../providers/participant_contribution_provider.dart';

// class PaymentPage extends StatefulWidget {
//   static const routeName = '/payment';

//   @override
//   _PaymentPageState createState() => _PaymentPageState();
// }

// class _PaymentPageState extends State<PaymentPage> {
//   final TextEditingController _gameNameController = TextEditingController();
//   final TextEditingController _paymentAmountController = TextEditingController();
//   final TextEditingController _bankAccountController = TextEditingController();

//   @override
//   void dispose() {
//     _gameNameController.dispose();
//     _paymentAmountController.dispose();
//     _bankAccountController.dispose();
//     super.dispose();
//   }

//   OutlineInputBorder _inputBorder() {
//     return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(10.0),
//       borderSide: BorderSide(
//         color: Colors.black,
//         width: 1.0,
//       ),
//     );
//   }

//   void _showSnackbar(BuildContext context, String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         duration: Duration(seconds: 2),
//       ),
//     );
//   }

//   void _clearFields() {
//     _gameNameController.clear();
//     _paymentAmountController.clear();
//     _bankAccountController.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('lipia mchezo'),
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: Container(
//           height: 400,
//           padding: EdgeInsets.all(16.0),
//           margin: EdgeInsets.all(16.0),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8.0),
//             color: Colors.grey[100],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: TextField(
//                   controller: _gameNameController,
//                   decoration: InputDecoration(
//                     labelText: 'Name of the Game',
//                     contentPadding: EdgeInsets.all(16.0),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: TextField(
//                   controller: _paymentAmountController,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     labelText: 'Payment Amount (\$)',
//                     contentPadding: EdgeInsets.all(16.0),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: TextField(
//                   controller: _bankAccountController,
//                   decoration: InputDecoration(
//                     labelText: 'Bank Account Number',
//                     contentPadding: EdgeInsets.all(16.0),
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: () {
//                   String gameName = _gameNameController.text;
//                   double paymentAmount =
//                       double.tryParse(_paymentAmountController.text) ?? 0.0;
//                   String bankAccountNumber = _bankAccountController.text;

//                   // Create a new contribution object
//                   ParticipantContribution contribution = ParticipantContribution(
//                     id: DateTime.now().toString(),
//                     title: gameName,
//                     amount: paymentAmount,
//                     contributionDate: DateTime.now(),
//                     cardNumber: 0,
//                   );

//                   Provider.of<ParticipantContributionProvider>(context,
//                           listen: false)
//                       .addContribution(contribution);

//                   _showSnackbar(context, 'Payment made successfully');
//                   _clearFields();

//                   // Unfocus the text fields to hide the keyboard
//                   FocusScope.of(context).unfocus();

//                   print('Game Name: $gameName');
//                   print('Payment Amount: $paymentAmount');
//                   print('Bank Account Number: $bankAccountNumber');
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.green,
//                 ),
//                 child: const Text('Lipia'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }