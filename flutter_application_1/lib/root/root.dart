import 'package:flutter/material.dart';
import 'package:flutter_application_1/Imkerview/homescreen.dart';
import 'package:flutter_application_1/screens/logIn/login.dart';
import 'package:flutter_application_1/states/currentUser.dart';
import 'package:provider/provider.dart';

enum AuthStatus {
  notLoggedIn,
  loggedIn,
}

class OurRoot extends StatefulWidget {
  @override
  _OurRootState createState() => _OurRootState();
}

class _OurRootState extends State<OurRoot> {
  AuthStatus _authStatus = AuthStatus.notLoggedIn;

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();

    CurrentUser _currentUser = Provider.of<CurrentUser>(context, listen: false);
    String _returnString = await _currentUser.onStartUp();
    if (_returnString == 'success!') {
      setState(() {
        _authStatus = AuthStatus.loggedIn;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget retVal = OurLogIn();

    switch (_authStatus) {
      case AuthStatus.notLoggedIn:
        retVal = OurLogIn();
        break;
      case AuthStatus.loggedIn:
        retVal = MyImkerHome();
        break;
      default:
    }
    return retVal;
  }
}
