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

  Future _showAlertDialog(BuildContext context, String message) async{

    return showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text(message),
            actions: [
              FlatButton(
                child: Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Add widget here'),

              RaisedButton(
                child: Text('Click Me'),
                onPressed: () => _showAlertDialog(context, 'Do you like flutter?'),
              )
            ],
          ),
        ),
        // child: Text(_value),
      ),
    );
  }
}
