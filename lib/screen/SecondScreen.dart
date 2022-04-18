import 'package:flutter/material.dart';
class SecondScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: Text("First screen is loaded"),
            ),
            FlatButton(
              color: Colors.purple,
              child: Text('Go back to  first screen',style:TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.pushNamed(context, '/second');
              },
            ),
          ],

        ),
      ),
    );
  }
}
