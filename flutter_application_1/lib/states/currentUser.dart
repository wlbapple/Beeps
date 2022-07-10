import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user.dart';

class CurrentUser extends ChangeNotifier {
  late OurUser _currentUser;  

  OurUser get getCurrentUser => _currentUser;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> onStartUp() async {
    String retVal = "error";
    try {
      User? _user = _auth.currentUser;
      _currentUser.uid = _user!.uid;
      _currentUser.email = _user.email!;
      retVal = "success!";
    } catch (e) {
      print(e);
    }

    return retVal;
  }

  Future<bool> signUpUser(String email, String password) async {
    bool retVal = false;
    try {
      final User? user = (await _auth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;
      retVal = true;
    } catch (e) {
      print(e);
    }

    return retVal;
  }

  Future<bool> loginUser(String email, String password) async {
    bool retVal = false;
    try {
      final User? user = (await _auth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;

      if (user != null) {
        _currentUser.uid = user.uid;
        _currentUser.email = user.email!;
        retVal = true;
      }
    } catch (e) {
      print(e);
    }

    return retVal;
  }
}
