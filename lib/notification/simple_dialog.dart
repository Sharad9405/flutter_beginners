import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

enum Answers { YES, NO, MAYBE }

class _MyAppState extends State<MyApp> {
  var _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _askUser() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Do you like flutter?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              SimpleDialogOption(
                child: Text('Yes'),
                onPressed: () => Navigator.pop(context, Answers.YES),
              ),
              SimpleDialogOption(
                child: Text('No'),
                onPressed: () => Navigator.pop(context, Answers.NO),
              ),
              SimpleDialogOption(
                child: Text('Maybe'),
                onPressed: () => Navigator.pop(context, Answers.MAYBE),
              ),
            ],
          );
        })) {

      case Answers.YES: {
        _setValue('Yes');
        break;
      }
      case Answers.NO: {
        _setValue('No');
        break;
      }
      case Answers.MAYBE: {
        _setValue('Maybe');
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Dialog'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value),

              RaisedButton(
                child: Text('Click Me'),
                onPressed: _askUser,
              )
            ],
          ),
        ),
        // child: Text(_value),
      ),
    );
  }
}
