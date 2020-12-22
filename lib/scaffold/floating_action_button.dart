import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value1 = '';

  void _onClicked() => setState(() => _value1 = DateTime.now().toString());


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fab Button'),
          backgroundColor: Colors.red,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.timer),
          backgroundColor: Colors.green,
          onPressed: _onClicked,
          mini: false,
          elevation: 5.0,
          tooltip: 'Timer',
        ),
        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_value1.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 37.0),)
              ],
            ),
          ),
          // child: Text(_value),
        ),
      ),
    );
  }
}
