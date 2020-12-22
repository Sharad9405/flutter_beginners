import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<BottomNavigationBarItem> _items;
  String _value = '';
  int _index = 0;

  void _onClick(String value) => setState(() => _value = value);


  @override
  void initState() {
    _items = List<BottomNavigationBarItem>();
    _items.add(BottomNavigationBarItem(
        label: 'People',
        icon: Icon(Icons.people)
    ));
    _items.add(BottomNavigationBarItem(
        label: 'Weekend',
        icon: Icon(Icons.weekend)
    ));
    _items.add(BottomNavigationBarItem(
        label: 'Message',
        icon: Icon(Icons.message)
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bottom Navigation Drawer'),
          backgroundColor: Colors.red,
        ),

        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_value),
              ],
            ),
          ),
          // child: Text(_value),
        ),

        bottomNavigationBar: BottomNavigationBar(items:
        _items
          ,
          fixedColor: Colors.blue,
          currentIndex: _index,
          onTap: (int item){
            setState(() {
              _index = item;
              _value = 'Current value is $_index';
            });
          },),
      ),
    );
  }
}
