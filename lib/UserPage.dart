import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:usai_app/main.dart';
class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('UASI',
        style: TextStyle(color: Colors.lightGreen, fontSize: 20.00),
      ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        elevation: 20.00,
      ),
      body:
        Column(
             children:[
             Container(
               margin: EdgeInsets.all(30),
                 child: Center(
                   child: Text(
                     'List Of User Services\n',
                     style: const TextStyle(
                         fontSize: 40,
                         fontWeight: FontWeight.w300,
                         fontStyle: FontStyle.italic
                     ),

                   ),
                 )
             ),

           Container(
             margin: EdgeInsets.all(10),
             child: Center(
               child:RaisedButton(
                 onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => fetchAddress() ),);
                 },
                 child: Text('Retrieve Landlord Address',
                 style: TextStyle(fontSize: 10.00,fontWeight: FontWeight.bold,color: Colors.white),),
                 color: Colors.green,
                 elevation: 20.00,
               )
             ),
           ),
             Container(
               margin: EdgeInsets.all(10),
               child: Center(
                   child:RaisedButton(
                     onPressed: (){
                     //  Navigator.push(context, MaterialPageRoute(builder: (context) => ),);
                     },
                     child: Text('Check for Nearby Mobile Operators',
                       style: TextStyle(fontSize: 10.00,fontWeight: FontWeight.bold,color: Colors.white),),
                     color: Colors.green,
                     elevation: 20.00,
                   )
               ),
             )  ,
             Container(
               margin: EdgeInsets.all(10),
               child: Center(
                   child:RaisedButton(
                     onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => Download()),);
                     },
                     child: Text('Download E-AADHAR',
                       style: TextStyle(fontSize: 10.00,fontWeight: FontWeight.bold,color: Colors.white),),
                     color: Colors.green,
                     elevation: 20.00,
                   )
               ),
             )
           ],
        )

    );
  }


  }

