import 'package:flutter/material.dart';
import 'package:hotelmanagement/widget/my_text_field.dart';

class SignUp extends StatefulWidget {
   SignUp({ Key? key }) : super(key: key);
   _SignUpState createState() => _SignUpState();
}
class _SignUpState extends State<SignUp>{
  static String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = RegExp(pattern);
  TextEditingController FirstName = TextEditingController();
  TextEditingController LastName = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();

  GlobalKey<ScaffoldState> globalKey=GlobalKey<ScaffoldState>();

  void validation(){
    if(FirstName.text.trim().isEmpty || FirstName.text.trim() == null){
      globalKey.currentState?.showSnackBar(
        SnackBar(
          content: Text(
            "FirstName is empty",
            ),
          ),
        );
        return;
    }
    if(LastName.text.trim().isEmpty || LastName.text.trim() == null){
      globalKey.currentState?.showSnackBar(
        SnackBar(
          content: Text(
            "LastName is empty",
            ),
          ),
        );
        return;
    }
    if(Email.text.trim().isEmpty || Email.text.trim() == null){
      globalKey.currentState?.showSnackBar(
        SnackBar(
          content: Text(
            "Email is empty",
            ),
          ),
        );
        return;
    }
    if(Password.text.trim().isEmpty || Password.text.trim() == null){
      globalKey.currentState?.showSnackBar(
        SnackBar(
          content: Text(
            "Password is empty",
            ),
          ),
        );
        return;
    }
  }

  Widget button({@required String? buttonName,
                required Color color,
                @required Color? textColor,
                @required Function? ontap}){
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
      key: globalKey,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                MyTextField(
                  controller: FirstName,
                  obscureText: false,
                  hintText: "First Name"
                ),
                MyTextField(
                  controller: LastName,
                  obscureText: false,
                  hintText: "Last Name"
                ),
                MyTextField(
                  controller: Email,
                  obscureText: false,
                  hintText: "Email"
                ),
                MyTextField(
                  controller: Password,
                  obscureText: true,
                  hintText: "Password"
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
                    textColor: Colors.white),
                    SizedBox(width: 40,
                  ),
                  button(
                    ontap:(){   
                      validation();
                    },
                    buttonName: "Register", 
                    color: Colors.red,
                    textColor: Colors.white
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
