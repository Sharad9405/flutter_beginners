import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value = '';



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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet dialog'),
        backgroundColor: Colors.red,
      ),

      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              // Text(_value),

              RaisedButton(
                child: Text('Open Bottom Sheet'),
                onPressed: _showBottom,
              )
            ],
          ),
        ),
        // child: Text(_value),
      ),

    );
  }

  void _showBottom(){
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context){
          return Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                  'Some info goes here',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),

                RaisedButton(
                  child: Text('Close'),
                  onPressed: () => Navigator.pop(context),
                ),

              ],
            ),
          );
        }
    );
  }

}

