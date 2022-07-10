import 'dart:developer';

import 'package:flutter_application_1/Imkerview/homescreen.dart';
import 'package:flutter_application_1/states/currentUser.dart';
import 'package:flutter_application_1/widgets/ourContainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OurLoginForm extends StatefulWidget {
  const OurLoginForm({Key? key}) : super(key: key);

  @override
  State<OurLoginForm> createState() => _OurLoginFormState();
}

class _OurLoginFormState extends State<OurLoginForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _loginUser(String email, String password, BuildContext context) async {
    CurrentUser _currentUser = Provider.of<CurrentUser>(context, listen: false);

    try {
      if (await _currentUser.loginUser(email, password)) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const MyImkerHome()));
      } else {
        Scaffold.of(context).showSnackBar(
          const SnackBar(
            content: Text('Wrong Log in information!'),
            duration: Duration(seconds: 2),
          ),
        );
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
            controller: _passwordController,
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
                  'Anmelden',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            onPressed: () {
              _loginUser(
                  _emailController.text, _passwordController.text, context);
            },
          ),
          TextButton(
            child: const Text(
              'Passwort vergessen',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
