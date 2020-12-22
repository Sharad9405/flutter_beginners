import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String _value = 'Hello World';

  void _onPressed(){
    setState(() {
      _value = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flat Button',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Raised Button'),
        ),
        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: [
              Text(_value,),

              FlatButton(
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