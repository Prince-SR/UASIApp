import 'package:flutter/material.dart';

class InputField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey)
            ) // Border
          ), // BoxDecoration
          child: TextField(
            decoration: InputDecoration(
              hintText: "Username",
              hintStyle: TextStyle(color: Colors.blueAccent),
              border: InputBorder.none
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.blueGrey)
              ) // Border
          ), // BoxDecoration
          child: TextField(
            decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.blueAccent),
                border: InputBorder.none
            ),
          ),
        ),
      ],
    );
  }
}