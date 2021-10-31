import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:html';
import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usai_app/LoginPage.dart';

import 'constants.dart';

void main() {
  runApp(
      MaterialApp(
        title: "UASI-Unique Aadhar Services Of India",
        home: MyApp(),
      ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('UASI',
        style: TextStyle(color: Colors.lightGreen, fontSize: 20.00),
      ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 20.00,
      ),

      body: Column(
          children: [
           Container(
             margin: EdgeInsets.all(30),
              child: Image.asset('Assets/download.png'),
              alignment: Alignment.topCenter,
              height: 200,
              width: 400,
            ),
            Container(
                child: Center(
                  child: Text(
                    'Welcome To Aadhar Services\n',
                    style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic
                    ),

                  ),
                )
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: Center(
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),),);
                  },
                  icon: Icon(
                      Icons.account_circle
                  ),
                  label: Text('USER LOGIN',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightGreen,
                  ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              child: Center(
                child: RaisedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),),);
                  },
                  icon: Icon(
                      Icons.account_circle
                  ),
                  label: Text('MobileOperator Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightGreen,
                ),
              ),
            ),
         ]
      ),

    );
  }

}
class fetchAddress extends StatelessWidget{
  var future;

  @override
  Widget build(BuildContext context) {
    var builder;
    return Scaffold(
      body:
        Center(
          child: FutureBuilder<constants>(

            future: getDetails(),
        builder:(context,snapshot){
              if(snapshot.hasData){
                final Details = snapshot.data;
                return Text("uid: ${Details!.uid}\n vid:${Details.vid}");
        }else if(snapshot.hasError){
                return Text(snapshot.error.toString());

        }
              return CircularProgressIndicator();


        },
        ),
        ),
    );
  }

}
Future<constants> getDetails() async{
  final url = "https://stage1.uidai.gov.in/onlineekyc/getEkyc/";
  final response = await http.get(Uri.parse(url),
                            headers: {"Accept":"application/json"});
  if(response.statusCode==200) {
    String jsonDetails = jsonDecode(response.body);
    return constants.fromJson(jsonDetails);
  }
  else
    {
    throw Exception();
  }
}




















