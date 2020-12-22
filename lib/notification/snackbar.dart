
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _scaffoldStateKey = GlobalKey<ScaffoldMessengerState>();


  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldStateKey,
      child: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar'),
          backgroundColor: Colors.red,
        ),

        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                // Text(_value),

                RaisedButton(
                  child: Text('Click Me'),
                  onPressed: _showSnackBar,
                )
              ],
            ),
          ),
          // child: Text(_value),
        ),
      ),
    );
  }

  void _showSnackBar(){
    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
    _scaffoldStateKey.currentState.showSnackBar(snackBar);
  }

  final snackBar = SnackBar(
    content: Text('Hey! This is a SnackBar message.'),
    duration: Duration(seconds: 2),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        print('Clicked Undo button');
        // Some code to undo the change.
      },
    ),
  );

}

