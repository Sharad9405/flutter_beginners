import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _value1 = 0;

  void _add() => setState(() => _value1++);
  void _remove() => setState(() => _value1--);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          backgroundColor: Colors.red,
          actions: [
            IconButton(
              icon: Icon(Icons.add,),
              onPressed: _add,
            ),
            IconButton(
              icon: Icon(Icons.remove,),
              onPressed: _remove,
            )
          ],
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
