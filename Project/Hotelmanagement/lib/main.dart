import 'package:flutter/material.dart';
import 'package:hotelmanagement/pages/login_page.dart';
import 'package:hotelmanagement/pages/welcome_page.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  

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


