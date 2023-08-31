import 'package:app/pages/register_page_form.dart';
import 'package:flutter/material.dart';
import 'register_page_background.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          const RegisterPageBackground(),
          
          RegisterForm()

        ],
      ),
    );
  }
}