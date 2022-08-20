// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:hotelmanagement/pages/Login_page.dart';
import 'package:hotelmanagement/pages/SignUp_Page.dart';
import './pages/Login_page.dart';

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
      theme: ThemeData(),
      home: SignUp(),
    );
  }
}
