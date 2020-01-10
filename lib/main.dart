import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome(),
  ));
}

//Tab Widget
Widget tabWidget() {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text("TODAY'S PLAN", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("DASHBOARD", style: TextStyle(fontWeight: FontWeight.bold))
      ],
    ),
  );
}

//Activity Widget(){
Widget MyWidget(String text, Color color) {
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

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sport"),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                  child: Text(
                "iFit Coach",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              )),
            ),
            tabWidget(),
            MyWidget("ACTIVITY", Colors.blue),
            MyWidget("WORKOUT", Colors.red),
            MyWidget("NUTRITION", Colors.green),
            MyWidget("SLEEP", Colors.purple),
          ]),
    );
  }
}
