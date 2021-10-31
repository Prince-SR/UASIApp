import 'package:flutter/material.dart';
import 'Header.dart';
import 'InputWrapper.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.orangeAccent,
            Colors.orangeAccent,
            Colors.orangeAccent,
          ],
          ) //LinearGradient
        ), //BoxDecoration
        child: Column(
          children: <Widget>[
            SizedBox(height: 80,),
            Header(),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                ) // BorderRadius.only
              ), // BoxDecoration
              child: InputWrapper(),
            )

            ),
            // Container, Expanded
          ], // <Widget>[]
        ) //Column
      ), //Container
    ); //Scaffold
  }
}