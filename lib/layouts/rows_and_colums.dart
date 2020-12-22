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
  var _userController = TextEditingController();
  var _passController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Please Login'),
              Row(
                children: [
                  Text('Username: '),
                  Expanded(
                    child: TextField(
                      controller: _userController,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('Password: '),
                  Expanded(
                    child: TextField(
                      controller: _passController,
                      obscureText: true,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.all(32.0),
                child: RaisedButton(
                  child: Text('Click Me'),
                  onPressed: () => print('Username = ${_userController.text}'),
                ),
              ),

            ],
          ),
        ),
        // child: Text(_value),
      ),
    );
  }
}
