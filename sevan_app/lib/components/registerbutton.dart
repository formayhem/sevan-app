import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget{

  final Function()? onTap;

  const RegisterButton ({super.key, required this.onTap});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:const EdgeInsets.all(10),
        margin:const EdgeInsets.symmetric(horizontal: 95),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100)
          ),
        child: const Center(
          child: Text("Jisajili",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          )),
      ),
    );
  }

}