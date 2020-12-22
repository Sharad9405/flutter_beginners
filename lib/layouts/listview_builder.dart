import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _countries = Map();
  void _getData() async {
    print('api calling');
    var url = 'http://country.io/names.json';
    var response = await http.get(url);

    if(response.statusCode == 200){
      setState(() => _countries = json.decode(response.body));
      print('Loaded  ${_countries.length} countries');
    }
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }




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
              Text('Countries', style: TextStyle(fontWeight: FontWeight.bold),),

              Expanded(
                child: ListView.builder(
                  itemCount: _countries.length,
                  itemBuilder: (BuildContext context, int index){
                    String key = _countries.keys.elementAt(index);

                    return Row(
                      children: [

                        Text('$key : '),
                        Expanded(
                          child: Text('${_countries[key]} : '),
                        ),

                      ],
                    );
                  },
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
