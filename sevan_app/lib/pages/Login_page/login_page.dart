import 'package:app/pages/Login_page/login_page_form.dart';
import 'package:flutter/material.dart';
import 'login_page_background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const routeName = '/WelcomePage';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          const LoginPageBackground(),
          
          LoginForm()

        ],
      ),
    );
  }
}