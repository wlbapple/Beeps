import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/signUp/signup.dart';
import './localwidgets/loginform.dart';

class OurLogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                padding: const EdgeInsets.all(20.0),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 100, 40, 40),
                    child: Column(
                      children: [
                        Image.asset("assets/bee.png"),
                        const Text(
                          'Beeps',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => OurLogIn()));
                        },
                        child: const Text(
                          'Anmelden',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => OurSignup()));
                        },
                        child: const Text(
                          'Konto erstellen',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const OurLoginForm(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
