import 'dart:math';

import 'package:chatzapp/Widget/cusrtomtextfeild.dart';
import 'package:chatzapp/Widget/customButton.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Signup extends StatefulWidget {
  Signup();

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _emailControler = TextEditingController();
  TextEditingController _passwordControler = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey();
  String? email;
  String? password;
  bool isLodaing = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLodaing,
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 400,
                width: 1500,

                child: Image.asset('assets/9495457.png', fit: BoxFit.cover),
              ),
              Padding(
                padding: EdgeInsets.only(right: 1000),
                child: Text(
                  'SIGNIN FOR ACCOUNT',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 34),
                ),
              ),
              SizedBox(height: 30),
              Cusrtomtextfeild(
                obscureText: false,
                onChanged: (data) {
                  email = data;
                },
                controler: _emailControler,
                hinText: 'Enter email',
                labelText: 'Email',
                icon: Icons.email,
              ),
              SizedBox(height: 15),
              Cusrtomtextfeild(
                obscureText: true,
                onChanged: (data) {
                  password = data;
                },
                hinText: 'Enter password',
                labelText: 'Password',
                icon: Icons.lock,
              ),
              SizedBox(height: 15),
              Custombutton(
                text: 'Sign up',
                onTap: () async {
                  if (formkey.currentState!.validate()) {
                    isLodaing = true;
                    setState(() {});

                    try {
                      await SignUp();
                    } on FirebaseAuthException catch (ex) {
                      if (ex.code == 'weak-password') {
                        SnakBar(context, 'weak password');
                      } else if (ex.code == 'email-already-in-use') {
                        SnakBar(context, 'email is already exist');
                      }
                      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(ex.toString()), backgroundColor: Colors.deepPurple, ));
                    }
                    isLodaing = false;
                    setState(() {});
                    SnakBar(context, 'Sucess');
                  }
                },
              ),

              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont forget to Login, ',
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'Login');
                    },

                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> SignUp() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);

    FirebaseFirestore.instance.collection('users').add({'email': email});
  }

  void SnakBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.deepPurple),
    );
  }
}
