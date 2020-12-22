import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value1 = '';

  Future _selectDate() async {
    var picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2016),
        lastDate: DateTime(2019)
    );

    if(picked != null) setState(() => _value1 = picked.toString());
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Radios'),
        ),
        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[

                Text( _value1),

                RaisedButton(
                  child: Text('Click Me'),
                  onPressed: _selectDate,
                ),

              ],
            ),
          ),
          // child: Text(_value),
        ),
      ),
    );
  }
}
