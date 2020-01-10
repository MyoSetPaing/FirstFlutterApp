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
Widget ActivityWidget() {
  return Expanded(
    flex: 2,
    child: Container(
      margin: EdgeInsets.all(5.0),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 30.0),
      child: Text(
        "ACTIVITY",
        style:
            TextStyle(color: Colors.white, fontSize: 30.0, letterSpacing: 5.0),
      ),
      color: Colors.blue,
    ),
  );
}

//Workout Widget
Widget workoutWidget() {
  return Expanded(
    flex: 2,
    child: Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 30.0),
      alignment: Alignment.centerLeft,
      child: Text(
        "WORKOUT",
        style:
            TextStyle(color: Colors.white, fontSize: 30.0, letterSpacing: 5.0),
      ),
      color: Colors.deepOrange,
    ),
  );
}

//Nutrition Widget
Widget nutritionWidget() {
  return Expanded(
    flex: 2,
    child: Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 30.0),
      alignment: Alignment.centerLeft,
      child: Text(
        "NUTRITION",
        style:
            TextStyle(color: Colors.white, fontSize: 30.0, letterSpacing: 5.0),
      ),
      color: Colors.green,
    ),
  );
}

// Sleep Widget
Widget sleepWidget() {
  return Expanded(
    flex: 2,
    child: Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 30.0),
      alignment: Alignment.centerLeft,
      child: Text(
        "SLEEP",
        style:
            TextStyle(color: Colors.white, fontSize: 30.0, letterSpacing: 5.0),
      ),
      color: Colors.purple,
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
            ActivityWidget(),
            workoutWidget(),
            nutritionWidget(),
            sleepWidget(),
          ]),
    );
  }
}
