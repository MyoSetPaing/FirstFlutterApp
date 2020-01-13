import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {

  String text;
  Color color;

  MyWidget(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.all(5.0),
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 30.0),
        child: Text(
          text,
          style:
          TextStyle(color: Colors.white, fontSize: 30.0, letterSpacing: 5.0),
        ),
        color: color,
      ),
    );
  }

}