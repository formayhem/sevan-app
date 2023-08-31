import 'package:flutter/material.dart';

class RegisterPageBackground extends StatelessWidget {
  const RegisterPageBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 250,
      
      decoration:const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40)
        ),
      ),
      alignment: Alignment.center,
      child: const Text('JISAJILI',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 50,
        color: Colors.white,
      ),
      ),
      
    );
  }
}