import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/Imkerview/homescreen.dart';
import 'package:flutter_application_1/screens/logIn/login.dart';
import 'package:flutter_application_1/states/currentUser.dart';
import 'package:flutter_application_1/widgets/ourContainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OurSignupForm extends StatefulWidget {
  const OurSignupForm({Key? key}) : super(key: key);

  @override
  State<OurSignupForm> createState() => _OurSignupFormState();
}

class _OurSignupFormState extends State<OurSignupForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwortController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _streetController = TextEditingController();
  TextEditingController _plzController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _statusController = TextEditingController();

  void _signUpUser(
      String email,
      String password,
      String name,
      String age,
      String phone,
      String street,
      String plz,
      String city,
      String status,
      BuildContext context) async {
    CurrentUser currentUser = Provider.of<CurrentUser>(context, listen: false);

    try {
      if (await currentUser.signUpUser(email, password)) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MyImkerHome()));
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFFF78556),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
                hintText: "E-Mail"),
          ),
          const SizedBox(
            height: 16.0,
          ),
          TextFormField(
            controller: _passwortController,
            obscureText: true,
            decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFFF78556),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
                hintText: "Passwort"),
          ),
          const SizedBox(
            height: 32,
          ),
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFFF78556),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
                hintText: "Name"),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: _ageController,
            decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFFF78556),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
                hintText: "Alter"),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: _phoneController,
            decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFFF78556),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
                hintText: "Telefonnummer"),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: _streetController,
            decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFFF78556),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
                hintText: "Straße & Hausnummer"),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: _plzController,
            decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFFF78556),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
                hintText: "Postleitzahl"),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: _cityController,
            decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFFF78556),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
                hintText: "Stadt"),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: _statusController,
            decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0XFFF78556),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
                hintText: "Über dich"),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0XFFF78556),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Registrieren',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            onPressed: () {
              _signUpUser(
                  _emailController.text,
                  _passwortController.text,
                  _nameController.text,
                  _ageController.text,
                  _phoneController.text,
                  _streetController.text,
                  _plzController.text,
                  _cityController.text,
                  _statusController.text,
                  context);
            },
          ),
        ],
      ),
    );
  }
}
