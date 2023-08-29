
import '../components/loginbutton.dart';
import '../components/text_fields.dart';
import '../pages/welcome_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  
  static const routeName = '/WelcomePage';
//text editing controllers
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

// sign user in method
  // void signUserIn(){
    
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.green,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            //logo
            Image.asset('lib/Images/SevanLogo.png',),
            //welcome
           const Text('Tafadhali ingiza taarifa zako',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 16,
              ),
            ),
            //email 
              MyTextField(
                controller: phoneController,
                hintText: 'Simu',
                obscureText: false,
              ),
            
              const SizedBox(height:10),
            
            //password
            MyTextField(
              controller: passwordController,
              hintText: 'Nenosiri',
              obscureText: true,
            ),

            const SizedBox(height: 10,),
            
            //forgot password
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Umesahau Nenosiri?',
                    style: TextStyle(color:  Color.fromARGB(255, 255, 255, 255)),),
                  ],
                ),
              ),
            //login
              const SizedBox(height: 5,),
              LoginButton(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    WelcomePage.routeName
                  );
                },
              ),

              const SizedBox(height: 10,),
            //continue with 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
                
            //not a member?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hauna account?',
                    style: TextStyle(color: Colors.white),
                    ),
                    Text('Jisajili',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ), 
          ],),
        ),
      ),
    );
  }
} 