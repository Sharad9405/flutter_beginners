import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value = '';

  String _onChange(String value) {
    setState(() {
      _value = 'Change: $value';
    });
  }

  void _onSubmit(String value) {
    setState(() {
      _value = 'Submit: $value';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField'),
        ),
        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: [

                Text(_value),

                TextField(
                  decoration: InputDecoration(
                    labelText: 'Hello',
                    hintText: 'Hint',
                    icon: Icon(Icons.people),
                  ),
                  autocorrect: true,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  onChanged: _onChange,
                  onSubmitted: _onSubmit,
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
