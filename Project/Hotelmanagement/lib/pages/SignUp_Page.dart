// ignore_for_file: unnecessary_import, file_names, avoid_print, prefer_final_fields, prefer_const_constructors, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:form_field_validator/form_field_validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  

  void validate() {
    if (formKey.currentState!.validate) {
      print("Validated");
    } else {
      print("Not Validated");
    }
  }

  String? validatepass(value) {
    if (value!.isEmpty) {
      return "Required";
    } else if (value.length < 6) {
      return "Should Be At Least 6 characters";
    } else if (value.length > 15) {
      return "Should Not Be More Than 15 Charaters";
    } else {
      return null;
    }
  }

  
  String? validatename(value) {
    if (value!.isEmpty) {
      return "Should Enter Name";
    } else {
      return null;
    }
  }

  UserCredential? userCredential;
  TextEditingController _fname = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _lname = TextEditingController();
  TextEditingController _pass = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();


  Future sendData() async {
    
    try {
   userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: _email.text,
    password: _pass.text
  );

  
  var FirebaseFirestore;
  await FirebaseFirestore.instance.collection('userData').doc(userCredential!.user!.uid).set({
    'firstName':_fname,
    'lastName':_lname,
    'email':_email,
    'userid':userCredential!.user!.uid,
    'password':_pass
  });
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/register.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                Stack(
                  key: formKey,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 35, top: 20),
                      child: Text(
                        'Create\nAccount',
                        style: TextStyle(color: Colors.white, fontSize: 33),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 35, right: 35),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  controller: _fname,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      labelText: "First Name",
                                      labelStyle: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  validator: validatename,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: _lname,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      labelText: "Last Name",
                                      labelStyle: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  validator: validatename
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: _email,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      labelText: "Email",
                                      labelStyle: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  validator: MultiValidator([
                                    RequiredValidator(
                                        errorText: "Required *"),
                                    EmailValidator(
                                        errorText: "Not A Valid Email"),
                                  ]),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: _pass,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      labelText: "Password",
                                      labelStyle: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  validator: validatepass,
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Sign Up',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Color(0xff4c505b),
                                      child: IconButton(
                                          color: Colors.white,
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_forward,
                                          )),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'register');
                                      },
                                      child: Text(
                                        'Sign In',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Colors.white,
                                            fontSize: 18),
                                      ),
                                      style: ButtonStyle(),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
