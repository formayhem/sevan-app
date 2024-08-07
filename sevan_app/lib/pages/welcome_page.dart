import 'package:app/pages/Login_page/login_page.dart';
import '../components/loginbutton.dart';
import '../components/registerbutton.dart';
import 'Register_page/register_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

  const WelcomePage({super.key});

  // static const routeName = '/loginPage';
  // static const route = '/registerPage';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
    
      body: SafeArea(
        child:  Center(
          child: Column(
            children: [
              //Logo
            Image.asset('lib/Images/SevanGreen.png',
              height: 500,
            ),
              //login button
            LoginButton(
              onTap: () {
                Navigator.of(context).pushNamed(
                    LoginPage.routeName
                );
              }
            ),
            const SizedBox(height: 20,),
              //Register button
            RegisterButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const RegisterPage()),),
                );
              }
            ),
              //login button

              //register button


            ],
          ),

      )),
    );
  }
}