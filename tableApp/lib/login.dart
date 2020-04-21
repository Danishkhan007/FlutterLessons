import 'package:flutter/material.dart';
import 'package:tableApp/home.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN")
      ),
      body: Column(
        children:<Widget>[
          SizedBox(height: 40),
          TextField(),
          RaisedButton(
            child: Text("HOME"),
            onPressed:() {
              Navigator.push(context, MaterialPageRoute<void>(builder: (context) => new Home()));
            }
             )
        ]
      )
    );
  }
}