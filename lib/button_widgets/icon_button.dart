import 'package:flutter/cupertino.dart';
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

  int _value = 0;

  void _add(){
    setState(() {
      _value++;
    });
  }
  void _substract(){
    setState(() {
      _value--;
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

              Container(
                child: Center(
                  child: Text('Value = $_value'),
                ),
              ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _add
          ),
              IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: _substract
              ),
            ],
          ),
        ),
      ),
    );
  }
}