import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _value1 = false;
  bool _value2 = false;

  void _setValue1(bool value) => setState(() => _value1 = value);

  void _setValue2(bool value) => setState(() => _value2 = value);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Switches'),
        ),
        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[

                Switch(
                  value: _value1,
                  onChanged: _setValue1,
                ),

                SwitchListTile(
                  value: _value2,
                  onChanged: _setValue2,
                  title: Text('Hello', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                  activeColor: Colors.green,

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
