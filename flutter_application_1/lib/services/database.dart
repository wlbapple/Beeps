import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_application_1/models/user.dart';

class UserDataBase {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<String> createUser(OurUser user) async {
    String retVal = 'error';

    try {
      await _firestore.collection("users").doc(user.uid).set({
        'fullName': user.fullName,
        'phoneNumber': user.phoneNumber,
        'email': user.email,
        'adress': user.adress,
        'city': user.city,
        'plz': user.plz,
        'status': user.status
      });
    } catch (e) {
      print(e);
    }
    return retVal;
  }
}
