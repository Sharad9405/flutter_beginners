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
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.deepPurple,
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.album,size: 60,),
                        title: Text('Mohammad Rafi', style: TextStyle(fontSize: 30, color: Colors.white),),
                        subtitle: Text(
                          'Best of Mohammad Rafi songs',
                          style: TextStyle(fontSize: 18, color: Colors.white60),
                        ),
                      ),

                      ButtonBar(
                        children: [
                          RaisedButton(
                            child: const Text('Play'),
                            onPressed: (){},
                          ),

                          RaisedButton(
                            child: const Text('Pause'),
                            onPressed: (){},
                          ),
                          RaisedButton(
                            child: const Text('Stop'),
                            onPressed: (){},
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.deepPurple,
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.album,size: 60,),
                        title: Text('Mohammad Rafi', style: TextStyle(fontSize: 30, color: Colors.white),),
                        subtitle: Text(
                          'Best of Mohammad Rafi songs',
                          style: TextStyle(fontSize: 18, color: Colors.white60),
                        ),
                      ),

                      ButtonBar(
                        children: [
                          RaisedButton(
                            child: const Text('Play'),
                            onPressed: (){},
                          ),

                          RaisedButton(
                            child: const Text('Pause'),
                            onPressed: (){},
                          ),
                          RaisedButton(
                            child: const Text('Stop'),
                            onPressed: (){},
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.deepPurple,
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.album,size: 60,),
                        title: Text('Mohammad Rafi', style: TextStyle(fontSize: 30, color: Colors.white),),
                        subtitle: Text(
                          'Best of Mohammad Rafi songs',
                          style: TextStyle(fontSize: 18, color: Colors.white60),
                        ),
                      ),

                      ButtonBar(
                        children: [
                          RaisedButton(
                            child: const Text('Play'),
                            onPressed: (){},
                          ),

                          RaisedButton(
                            child: const Text('Pause'),
                            onPressed: (){},
                          ),
                          RaisedButton(
                            child: const Text('Stop'),
                            onPressed: (){},
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
        ),
        // child: Text(_value),
      ),
    );
  }
}
