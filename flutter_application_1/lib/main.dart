import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/root/root.dart';
import 'package:flutter_application_1/screens/logIn/login.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/states/currentUser.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ChangeNotifierProvider(
      create: (context) => CurrentUser(),
      child: MaterialApp(
        home: OurRoot(),
        theme: ThemeData(
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: Color(0XFFF78556)),
        ),
      ),
    );
  }
}
