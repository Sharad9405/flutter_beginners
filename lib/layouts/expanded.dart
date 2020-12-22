import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Image Demo'),

              Expanded(
                child: Image.asset('images/str.jpeg'),
              ),
              Expanded(
                child: Image.asset('images/str.jpeg',
                  fit: BoxFit.fitHeight,),
              ),
              Expanded(
                child: Image.asset('images/str.jpeg'),
              ),
            ],
          ),
        ),
        // child: Text(_value),
      ),
    );
  }
}
