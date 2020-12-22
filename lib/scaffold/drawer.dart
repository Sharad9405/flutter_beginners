import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value1 = 'Hello';

  // void _onClicked() => setState(() => _value1 = DateTime.now().toString());


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Drawer'),
          backgroundColor: Colors.red,
        ),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              children: [

                Text(
                    'Hello Drawer'
                ),

                RaisedButton(
                  child: Text('Close'),
                  onPressed: () => Navigator.pop(context),
                )

              ],
            ),
          ),
        ),

        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
              ],
            ),
          ),
          // child: Text(_value),
        ),
      ),
    );
  }
}
