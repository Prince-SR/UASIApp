import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Center(
            child: Text(" USER Login", style: TextStyle(color: Colors.white, fontSize: 40),),
    ),

         SizedBox(height: 10,),
          Center(
            child: Text("Register Yourself if First Visit", style: TextStyle(color: Colors.white, fontSize: 18),),
          )
       ],
      ),
    );
    }
}