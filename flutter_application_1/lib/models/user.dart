import 'package:cloud_firestore/cloud_firestore.dart';

class OurUser {
  late String uid;
  late String fullName;
  late String phoneNumber;
  late String email;
  late String adress;
  late String city;
  late String plz;
  late String status;

  OurUser({
    required this.uid,
    required this.fullName,
    required this.phoneNumber,
    required this.email,
    required this.adress,
    required this.city,
    required this.plz,
    required this.status,
  });
}
