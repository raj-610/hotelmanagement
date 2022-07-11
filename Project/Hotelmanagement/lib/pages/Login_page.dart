import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);
  Widget textField({@required String? hintText,@required IconData? icon,@required Color? iconColor, @required bool? obscureText}){
    return TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(icon,color: Colors.black,),
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.black),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey), )
                ),
              );
  }

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
                textField(
                  hintText: "Username",
                  icon: Icons.person_outline,
                  ),
                  SizedBox(height: 30,),
                textField(
                  obscureText: true,
                  hintText: "Password",
                  icon: Icons.lock_outline,
                  ),
              ],
            ),
            Container(
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