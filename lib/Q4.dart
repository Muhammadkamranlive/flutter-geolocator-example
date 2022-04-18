import 'package:flutter/material.dart';
import 'package:lab8/screen/SecondScreen.dart';
import 'package:lab8/screen/thirdscreen.dart';

void  main(){
  runApp(Myapp());
}


class Myapp extends StatefulWidget {


  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
      '/': (context) => SecondScreen(),
      '/second': (context) => ThirdScreen(),

    });
  }
}
