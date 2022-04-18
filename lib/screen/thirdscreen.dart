import 'package:flutter/material.dart';
class ThirdScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: Text("Second screen is loaded"),
            ),
            FlatButton(
              color: Colors.purple,
              child: Text('Go back to  first screen',style:TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
            ),
          ],

        ),
      ),
    );
  }
}
