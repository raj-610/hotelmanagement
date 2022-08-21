// ignore_for_file: unused_import, prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hotelmanagement/pages/Login_page.dart';
import 'package:hotelmanagement/pages/SignUp_Page.dart';
import 'package:hotelmanagement/pages/Welcome_page.dart';
// import './pages/Login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      routes: {
      'register': (context) => SignUp(),
      'login': (context) => MyLogin(),
    },
    );
  }
}
