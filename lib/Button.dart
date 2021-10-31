import 'package:flutter/material.dart';
import 'package:usai_app/UserPage.dart';

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.green[500],
        borderRadius: BorderRadius.circular(10),
      ),
      child: FlatButton(
          onPressed:() {
        Navigator.push(context,MaterialPageRoute(builder: (context) => UserPage()),);
      },
          child: Text('LOGIN',style: TextStyle(fontSize: 20.00,fontWeight: FontWeight.bold,
          color: Colors.white,),),
        color: Colors.green,
        height: 10.00,
      )
    );
  }
}