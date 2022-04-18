import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab8/JasonParsing.dart';
import 'package:lab8/WeatherApi.dart';
import 'package:lab8/Q4.dart';
void main(){
  runApp(MyApp());
}




class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Location obj =Location();
// task 3
  @override
  void initState(){
    obj.getCurrentLocation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
         home: Scaffold(
               body: Container(
                 child: Column(
                   children: [
                     Center(
                       child: FlatButton(
                         color: Colors.red,

                         child: Text('Get location'),
                         onPressed: (){

                           setState(() {
                             obj.getCurrentLocation();
                             ParsedData ob= ParsedData();
                             ob.GetJasonData();

                           });


                         },
                       ),


                     ),
                     SizedBox(height: 20,),
                     Center(
                       child: FlatButton(
                         color: Colors.purple,
                         child: Text("Check the  persmisions",style:TextStyle(color: Colors.white),),
                         onPressed: (){
                          obj.check();

                         },
                       ),
                     )
                   ],
                 ),
               ),
         ),
    );
  }
}
