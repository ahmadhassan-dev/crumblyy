import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget {
  final String title;
  final IconData iconFlag;
  final IconData message;

  @override
  Size get preferredSize {
    if (title == "Search") {
      return new Size.fromHeight(120.0);
    }
    return new Size.fromHeight(60.0);
  }

  MyAppBar({@required this.title, this.iconFlag, this.message});

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      actions: [
        (widget.title == "Crumblyy")
            ? new IconButton(
                icon: Icon(
                  Icons.flag,
                  color: Colors.grey[400],
                  size: 36,
                ),
                onPressed: () {},
              )
            : Container(),
        SizedBox(width: 10),
        (widget.title == "Crumblyy")
            ? new IconButton(
                icon: Icon(
                  Icons.messenger_sharp,
                  color: Colors.grey[400],
                  size: 26,
                ),
                onPressed: () {},
              )
            : Container(),
        (widget.title == "Profile")
            ? new IconButton(
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.grey[400],
                  size: 26,
                ),
                onPressed: () {},
              )
            : Container(),
        (widget.title == "Profile")
            ? new IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.grey[400],
                  size: 26,
                ),
                onPressed: () {},
              )
            : Container(),
      ],
      title: (widget.title == "Crumblyy" ||
              widget.title == "Categories" ||
              widget.title == "Profile")
          ? new Text(
              "${widget.title}",
              style: TextStyle(fontSize: 26, color: Colors.grey[400]),
            )
          : buildSearchBar(),
      bottom: (widget.title == "Search")
          ? TabBar(
              unselectedLabelColor: Colors.grey[600],
              labelColor: Colors.grey[600],
              tabs: [
                new Tab(
                  text: 'FEATURED',
                ),
                new Tab(
                  text: 'BUZZ',
                ),
              ],
              controller: _tabController,
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab,
            )
          : null,
      bottomOpacity: 1,
    );
  }

  Widget buildSearchBar() {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: TextField(
        textAlign: TextAlign.start,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.search),
          hintText: "Try 'Gym Hacks'",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.solid,
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(color: Colors.grey, width: 0.0),
          ),
          filled: true,
          contentPadding: EdgeInsets.all(10),
          fillColor: Colors.grey[100],
        ),
      ),
    );
  }
}
