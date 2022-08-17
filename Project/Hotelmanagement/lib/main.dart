// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotelmanagement/pages/SignUp_Page.dart';
import 'package:hotelmanagement/pages/login_page.dart';
import 'package:hotelmanagement/pages/welcome_page.dart';
import 'package:hotelmanagement/widget/my_text_field.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raj Restro',
      theme: ThemeData(
       
        ),
      home: LoginPage(),
    );
  }
}


