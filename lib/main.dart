import 'package:flutter/material.dart';

import 'my_widget.dart';

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
