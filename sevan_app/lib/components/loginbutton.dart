import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget{

  final Function()? onTap;

  const LoginButton ({super.key, required this.onTap});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:const EdgeInsets.all(10),
        margin:const EdgeInsets.symmetric(horizontal: 95),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(100)
          ),
        child: const Center(
          child: Text("Ingia",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          )),
      ),
    );
  }

}