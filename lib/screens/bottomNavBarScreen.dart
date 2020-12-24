import 'package:crumbly/app/app.dart';
import 'package:crumbly/components/appBar.dart';
import 'package:crumbly/screens/catogory.dart';
import 'package:crumbly/screens/home.dart';
import 'package:crumbly/screens/profile.dart';
import 'package:crumbly/screens/search.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  String _title;
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Category(),
    Search(),
    Profile(),
  ];

  @override
  void initState() {
    _title = "Crumblyy";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[100],
      appBar: MyAppBar(
        title: _title,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedLabelStyle: TextStyle(color: Colors.grey),
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.view_carousel_rounded,
            ),
            label: 'Hacks',
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.widgets,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      switch (_currentIndex) {
        case 0:
          _title = "Crumblyy";
          break;
        case 1:
          _title = "Categories";
          break;
        case 2:
          _title = "Search";
          break;
        case 3:
          _title = "profile";
          break;
        default:
          _title = "Crumblyy";
          break;
      }
    });
  }
}
