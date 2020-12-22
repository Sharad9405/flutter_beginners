import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _value1 = 0;
  int _value2 = 0;

  void _setValue1(int value) => setState(() => _value1 = value);

  void _setValue2(int value) => setState(() => _value2 = value);

  Widget _makeRadios(){
    List list = List<Widget>();

    for(int i =0; i<3;i++){
      list.add(Radio(
        value: i,
        groupValue: _value1,
        onChanged: _setValue1,
      ));
    }
    Column column = Column(children: list,);
    return column;
  }

  Widget _makeRadioTiles(){
    List list = List<Widget>();

    for(int i =0; i<3;i++){
      list.add(RadioListTile(value: i, groupValue: _value2, onChanged: _setValue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text('This is Title'),
        subtitle: Text('Subtitle'),
      )
      );
    }
    Column column = Column(children: list,);
    return column;
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
                _makeRadios(),
                _makeRadioTiles()

              ],
            ),
          ),
          // child: Text(_value),
        ),
      ),
    );
  }
}
