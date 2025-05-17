import 'package:chatzapp/firebase_options.dart';
import 'package:chatzapp/screens/Login.dart';
import 'package:chatzapp/screens/SignUp.dart';
import 'package:chatzapp/screens/add_contact.dart';
import 'package:chatzapp/screens/chatpage.dart';
import 'package:chatzapp/screens/contact.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'Login': (context) => Login(),
        'Signup': (context) => Signup(),
        'ChatPage': (context) => Chatpage(),
      },
      home: Login(),
    );
  }
}
