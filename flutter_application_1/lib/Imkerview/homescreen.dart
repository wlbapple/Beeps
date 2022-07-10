import 'package:flutter_application_1/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Imkerview/standort.dart';
import 'package:flutter_application_1/Imkerview/bees.dart';
import 'package:flutter_application_1/Imkerview/profilCard.dart';

class MyImkerHome extends StatefulWidget {
  const MyImkerHome({Key? key}) : super(key: key);

  @override
  _MyImkerState createState() => _MyImkerState();
}

class _MyImkerState extends State<MyImkerHome> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    MyStandort(),
    MyBees(),
    MyProfil()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.mapPin),
            label: 'Standort',
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.bee),
            label: 'Bienen',
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.user),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0XFFF78556),
        onTap: _onItemTapped,
      ),
    );
  }
}
