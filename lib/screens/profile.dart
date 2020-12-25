import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
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
      body: new Column(
        children: [
          new Container(
            child: new Card(
              child: new Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'images/profile_pirate.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  new Container(
                    width: 100,
                    child: new Text(
                      "Tap to Sign in",
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  new SizedBox(
                    width: 150,
                  ),
                  new Icon(
                    Icons.settings,
                    color: Colors.black45,
                  )
                ],
              ),
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
                        text: 'Saved',
                      ),

                      // second tab [you can add an icon using the icon property]
                      Tab(
                        text: 'Collection',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // first tab bar view widget
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Image.asset(
                        "images/profile_dog.png",
                      ),
                      new Text(
                        "No Bookmarks Found",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 18,
                            fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                ),

                // second tab bar view widget
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Image.asset(
                        "images/profile_dog.png",
                      ),
                      new Text(
                        "No Bookmarks Found",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 18,
                            fontWeight: FontWeight.w100),
                      )
                    ],
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
