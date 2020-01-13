import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Couter"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              count.toString(),
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.deepOrange,
              ),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  count++;

                });
              },
              child: Text("add"),
            ),
            OutlineButton(
              onPressed: () {
                setState(() {
                  count--;

                });
              },
              child: Text("sub"),
            )
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          setState(() {
//            count ++ ;
//
//          });
//          print(count);
//        },
//        child: Icon(Icons.add),
//      ),
    );
  }
}
