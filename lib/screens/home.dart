import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                    controller: _tabController,
                    // give the indicator a decoration (color and border radius)
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                      color: Colors.yellow[900],
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.yellow[900],
                    tabs: [
                      // first tab [you can add an icon using the icon property]
                      Tab(
                        text: 'All',
                      ),

                      // second tab [you can add an icon using the icon property]
                      Tab(
                        text: 'For You',
                      ),
                      Tab(
                        text: 'Trending',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // // tab bar view here
          // Expanded(
          //   child: TabBarView(
          //     controller: _tabController,
          //     children: [
          //       // first tab bar view widget
          //       Center(
          //         child: Text(
          //           'Place Bid',
          //           style: TextStyle(
          //             fontSize: 25,
          //             fontWeight: FontWeight.w600,
          //           ),
          //         ),
          //       ),

          //       // second tab bar view widget
          //       Center(
          //         child: Text(
          //           'Buy Now',
          //           style: TextStyle(
          //             fontSize: 25,
          //             fontWeight: FontWeight.w600,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Expanded(
            child: Container(
              color: Colors.grey[100],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 250,
                          width: 150,
                          child: new Card(
                            elevation: 05,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              "images/all_img1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: 150,
                          child: new Card(
                            elevation: 05,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Image.asset(
                              "images/all_img2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 8.0, left: 8, bottom: 8),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 250,
                          width: 150,
                          child: new Card(
                            elevation: 05,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Image.asset(
                              "images/all_img3.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: 150,
                          child: new Card(
                            elevation: 05,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Image.asset(
                              "images/all_img4.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 8.0, left: 8, bottom: 8),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 250,
                          width: 150,
                          child: new Card(
                            elevation: 05,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Image.asset(
                              "images/all_img5.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: 150,
                          child: new Card(
                            elevation: 05,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Image.asset(
                              "images/all_img6.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
