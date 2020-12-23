import 'package:crumbly/screens/bottomNavBarScreen.dart';
import 'package:crumbly/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInGmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BottomNavScreen()));
              },
              child: new Text(
                "Skip",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.05),
            child: new Image.asset(
              'images/logo.png',
              width: 100.0,
              height: 100.0,
              //fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.2),
            child: new Text(
              "Login to keep your bookmarks safe and sync across devices",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: new Container(
              height: 50,
              color: Colors.orange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Container(
                    child: FaIcon(
                      FontAwesomeIcons.googlePlusG,
                      color: Colors.white,
                    ),
                  ),
                  new Container(
                    child: Text(
                      "Sign-in with Google",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            "images/signInBackground.png",
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}
