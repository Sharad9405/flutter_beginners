import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value = '';

  void _onClick(String value) => setState(() => _value = value);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Footer Buttons'),
          backgroundColor: Colors.red,
        ),

        persistentFooterButtons: [

          IconButton(
            icon: Icon(Icons.timer),
            onPressed: () => _onClick('Button 1'),
          ),
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () => _onClick('Button 2'),
          ),
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () => _onClick('Button 3'),
          )

        ],

        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_value),
              ],
            ),
          ),
          // child: Text(_value),
        ),
      ),
    );
  }
}
