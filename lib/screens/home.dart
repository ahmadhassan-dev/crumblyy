import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: Container(
                    width: 260.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/home_img1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.black87, Colors.transparent],
                          stops: [0.7, 1],
                        ),
                      ),
                      //color: Colors.grey,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Text(
                              "7 Sign",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            new Text(
                              "you need a",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            new Text(
                              "BREAK",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            new Container(
                              color: Colors.white,
                              height: 20,
                              width: 60,
                              child: Center(child: new Text("See Now")),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: 260.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/home_img2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.black87, Colors.transparent],
                          stops: [0.7, 1],
                        ),
                      ),
                      //color: Colors.grey,
                      width: 170,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Text(
                              "How to find",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            new Text(
                              "Someone's Closest",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            new Text(
                              "find in a group",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            new Container(
                              color: Colors.white,
                              height: 20,
                              width: 60,
                              child: Center(child: new Text("See Now")),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        width: 150,
                        alignment: Alignment.topLeft,
                        child: Container(
                          // decoration: BoxDecoration(
                          //   gradient: LinearGradient(
                          //     begin: Alignment.centerLeft,
                          //     end: Alignment.centerRight,
                          //     colors: [Colors.black87, Colors.transparent],
                          //     stops: [0.7, 1],
                          //   ),
                          // ),
                          //color: Colors.grey,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  "6 ways to let go",
                                  style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                new Text(
                                  "of someone",
                                  style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                new Text(
                                  "you love!",
                                  style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                new Container(
                                  color: Colors.blue[900],
                                  height: 20,
                                  width: 60,
                                  child: Center(
                                      child: new Text(
                                    "See Now",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "images/home_img3.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Container(
                    width: 260.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/home_img4.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          new Text(
                            "How to Increase Your",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          new Text("Influence at work?",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
