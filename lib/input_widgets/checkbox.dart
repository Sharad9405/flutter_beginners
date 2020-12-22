import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _value1 = false;
  bool _value2 = false;

  String _onChangedValue1(bool value) {
    setState(() {
      _value1 = value;
    });
  }
  String _onChangedValue2(bool value) {
    setState(() {
      _value2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Checkbox'),
        ),
        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: [

                Checkbox(   // limited scope to customise widget
                  value: _value1,
                  onChanged: _onChangedValue1,
                ),
                CheckboxListTile(  // lot of thing to customise
                  value: _value2,
                  onChanged: _onChangedValue2,
                  title: Text('Hello World'),
                  subtitle: Text('this is sub title'),
                  secondary: Icon(Icons.archive),
                  activeColor: Colors.red,
                  controlAffinity: ListTileControlAffinity.leading,
                )
              ],
            ),
          ),
          // child: Text(_value),
        ),
      ),
    );
  }
}
