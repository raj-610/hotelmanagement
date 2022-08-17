import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final String? hintText;
  final bool obscureText;
  final TextEditingController? controller;
  MyTextField({ Key? key , @required this.hintText,@required this.obscureText=false,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.black),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                      ), 
                    ),
                ),
              );
  }
}