import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp() );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/i_am_rich_app_icon.png"),
          ),
              Text(
                'Sanikumar',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                )
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(
                width: 150.0,
                height: 20.0,
                child:
                Divider(
                  color: Colors.teal.shade100,
                ),

              ),
              Card(
                //padding: EdgeInsets.all(10.0), card class does not contain padding
                //color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child:
                  ListTile(
                    leading: Icon(
                            Icons.add_call,
                            color: Colors.teal.shade900,
                            size: 30.0,
                    ),
                    title: Text(
                        '+91-9657920143',
                         style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                  )),
              ),

              Card(
                //padding: EdgeInsets.all(10.0),
                //color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child:
                  ListTile(
                    leading:Icon(
                            Icons.email,
                            color: Colors.teal.shade900,
                            size: 30.0,
                    ),
                    title: Text(
                      'sanikumarsahani@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 18.0,
                      ),
                    ),
                  )
              )
            ],
          )
        ),
      ),
    );
  }
}
