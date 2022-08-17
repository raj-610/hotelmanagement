// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hotelmanagement/widget/my_text_field.dart';

 class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);
  // Widget textField({@required String? hintText,@required IconData? icon,@required Color? iconColor, @required bool? obscureText}){
  //   return TextFormField(
  //               decoration: InputDecoration(
  //                 prefixIcon: Icon(icon,color: Colors.black,),
  //                 hintText: hintText,
  //                 hintStyle: TextStyle(color: Colors.black),
  //                 enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey), )
  //               ),
  //             );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white),onPressed: () {},),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 140),
              child: Text(
                "Login In", 
                style: TextStyle(
                  color: Colors.black, 
                  fontSize: 40, 
                  fontWeight: FontWeight.bold
              ),
              ),
            ),
            Column(
              children: [
                MyTextField(
                  controller: null,
                  hintText: 'Email', 
                  obscureText: false),
                  SizedBox(height: 30,),

                MyTextField(
                  controller: null,
                  hintText: 'Password', 
                  obscureText: true),
              ],
            ),
            SizedBox(
              height: 60,
              width: 200,
              child:RaisedButton(
                color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              onPressed: (){},
              child: Text("Log in",style: TextStyle(color: Colors.white,fontSize: 20 ),),
              ),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("New user?",style: TextStyle(color: Colors.grey),),
              Text("Register now.",style: TextStyle(color: Colors.red),)
        
        ],
        )

          ],

        ),
      ),
     
    );
  }
}