import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double result = 0.0;
  var firstController = TextEditingController();
  var secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titleWidget(),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            firstTF(),
            SizedBox(
              height: 20.0,
            ),
            secondTF(),
            SizedBox(
              height: 20.0,
            ),
            calculateButtonWidget(),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "$result",
              style: TextStyle(color: Colors.purple, fontSize: 40.0),
            )
          ],
        ),
      ),
    );
  }

  _add() {
    String str1 = firstController.text;
    String str2 = secondController.text;
    var num1 = double.parse(str1);
    var num2 = double.parse(str2);
    setState(() {
      result = num1 + num2;
    });
  }

  _sub() {
    String str1 = firstController.text;
    String str2 = secondController.text;
    var num1 = double.parse(str1);
    var num2 = double.parse(str2);
    setState(() {
      result = num1 - num2;
    });
  }

  _mul() {
    String str1 = firstController.text;
    String str2 = secondController.text;
    var num1 = double.parse(str1);
    var num2 = double.parse(str2);
    setState(() {
      result = num1 * num2;
    });
  }

  _div() {
    String str1 = firstController.text;
    String str2 = secondController.text;
    var num1 = double.parse(str1);
    var num2 = double.parse(str2);
    setState(() {
      result = num1 / num2;
    });
  }

  Widget firstTF() {
    return TextField(
      controller: firstController,
      decoration: InputDecoration(
          labelText: "Enter 1st number", border: OutlineInputBorder()),
      keyboardType: TextInputType.number,
    );
  }

  Widget secondTF() {
    return TextField(
        controller: secondController,
        decoration: InputDecoration(
            labelText: "Enter 2nd number", border: OutlineInputBorder()),
        keyboardType: TextInputType.number);
  }

  Widget calculateButtonWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          onPressed: _add,
          child: Text("+"),
          color: Colors.purple,
          textColor: Colors.white,
        ),
        RaisedButton(
          onPressed: _sub,
          child: Text("-"),
          color: Colors.green,
          textColor: Colors.white,

        ),
        RaisedButton(
          onPressed: _mul,
          child: Text("x"),
          color: Colors.red,
          textColor: Colors.white,

        ),
        RaisedButton(
          onPressed: _div,
          child: Text("/"),
          color: Colors.indigo,
          textColor: Colors.white,

        )
      ],
    );
  }

  Widget titleWidget() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[Icon(Icons.casino), Text("Calculator")],
    );
  }
}
