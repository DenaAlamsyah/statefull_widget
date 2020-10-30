import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int incrementedNumber = 0;

  void handlePressMainBtn() {
    setState(() {
      incrementedNumber += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Statefull Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(incrementedNumber.toString()),
              RaisedButton(child: Text("Tambah"), onPressed: handlePressMainBtn)
            ],
          ),
        ),
      ),
    );
  }
}
