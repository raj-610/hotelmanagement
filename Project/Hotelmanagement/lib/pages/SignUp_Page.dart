import 'package:flutter/material.dart';
class SignUp extends StatelessWidget {
  const SignUp({ Key? key }) : super(key: key);

  Widget textField({@required String? hintText}){
    return TextFormField(
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.black),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey), )
                ),
              );
  } 
  Widget button({@required String? buttonName,required Color color,@required Color? textColor}){
    return Container(
                    width: 120,
                    child: RaisedButton(
                      color: color,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                        ), 
                    child: Text(
                      buttonName!,
                      style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
                  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Sign Up",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                ),
              ),
              Container(
                height: 250,
                child: Column(
                  children: [
                textField(
                  hintText: "Email", 
                    ),
                textField(
                  hintText: "Username", 
                    ),
                textField(
                  hintText: "Password", 
                    ),
                textField(
                  hintText: "Confirm Password", 
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(
                    buttonName: "Cancel", 
                    color: Colors.grey,
                    textColor: Colors.black),
                    SizedBox(width: 40,),
                  button(
                    buttonName: "Register", 
                    color: Colors.red,
                    textColor: Colors.white
                    ),
                    
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
