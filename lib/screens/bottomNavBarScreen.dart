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
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Category(),
    Search(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          new IconButton(
            icon: Icon(
              Icons.flag,
              color: Colors.grey[400],
              size: 36,
            ),
            onPressed: () {},
          ),
          SizedBox(width: 10),
          new IconButton(
            icon: Icon(
              Icons.messenger_sharp,
              color: Colors.grey[400],
              size: 26,
            ),
            onPressed: () {},
          ),
        ],
        title: new Text(
          "Crumblyy",
          style: TextStyle(fontSize: 26, color: Colors.grey[400]),
        ),
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
    });
  }
}
