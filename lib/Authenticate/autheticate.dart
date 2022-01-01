import 'package:chat_app_firebase/Screens/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login_scree.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Authenticate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return HomeScreen();
    } else {
      return LoginScreen();
    }
  }
}
