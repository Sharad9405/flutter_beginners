import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SetMainApp());
}

class SetMainApp extends StatefulWidget {
  @override
  _SetMainAppState createState() => _SetMainAppState();
}

class _SetMainAppState extends State<SetMainApp> {

  String _value = 'Hello World';

  void _onPressed(){
    setState(() {
      _value = 'My name is Sharad';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raised Button',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Raised Button'),
        ),
        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: [
              Text(_value,),

              RaisedButton(
                child: Text('Click Me'),
                onPressed: _onPressed ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}