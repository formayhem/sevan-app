import 'package:app/components/loginbutton.dart';
import 'package:app/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../../components/text_fields.dart';

class LoginForm extends StatelessWidget {
   LoginForm({super.key});

  static const routeName = '/WelcomePage';
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final paymentNumberController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 380,
        padding: const EdgeInsets.symmetric(horizontal: 5),
    
        decoration:const BoxDecoration(
          color: Color.fromARGB(255, 182, 178, 178),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
              controller: nameController,
              hintText: 'Jina',
              obscureText: false,
            ),
            const SizedBox(height:20),
    
            MyTextField(
              controller: passwordController,
              hintText: 'Nenosiri',
              obscureText: true,
            ),
            const SizedBox(height:30),

            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Umesahau Nenosiri?',
                    style: TextStyle(color:  Color.fromARGB(255, 255, 255, 255)),),
                  ],
                ),
            ),
                const SizedBox(height: 10,),
                LoginButton(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      HomePage.routeName
                    );
                  },
                ),

             const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),
                
            //not a member?
            const Row(
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
          ],
        ),
      ),
    );
  }
}