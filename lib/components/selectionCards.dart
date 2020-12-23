import 'package:flutter/material.dart';

class SelectionCards extends StatelessWidget {
  final String title;
  final Color color;
  SelectionCards({@required this.title, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 170,
      child: new Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        color: color,
        child: Center(
          child: new Text(
            "$title",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
