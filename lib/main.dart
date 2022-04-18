import 'package:flutter/material.dart';
import 'package:lab8/WeatherApi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Location obj = Location();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text('lab8'),
      ),
      body: Column(
        children: [
          Center(
            child: FlatButton(
              color: Colors.red,
              child: Text('Get location'),
              onPressed: () {
                setState(() {
                  obj.getCurrentLocation();
                });
              },
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: FlatButton(
              color: Colors.purple,
              child: Text('check permission'),
              onPressed: () {
               obj.check();
              },
            ),
          ),
        ],
      ),
    ));
  }
}
