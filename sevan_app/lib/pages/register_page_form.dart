import 'package:flutter/material.dart';
import '../components/text_fields.dart';
import '../components/registerbutton.dart';

class RegisterForm extends StatelessWidget {
   RegisterForm({super.key});

  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final paymentNumberController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 400,
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
              hintText: 'Jina Kamili',
              obscureText: false,
            ),
            const SizedBox(height:10),
    
            MyTextField(
              controller: phoneController,
              hintText: 'Namba ya simu',
              obscureText: false,
            ),
            const SizedBox(height:10),
    
            MyTextField(
              controller: passwordController,
              hintText: 'Nenosiri',
              obscureText: true,
            ),
            const SizedBox(height:10),

            MyTextField(
              controller: paymentNumberController,
              hintText: 'Namba ya malipo',
              obscureText: false,
            ),
            const SizedBox(height:20),
    
            const RegisterButton(
              onTap: null
            ),
    
          ],
        ),
      ),
    );
  }
}