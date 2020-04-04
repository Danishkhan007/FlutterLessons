import 'package:flutter/material.dart';

class TableApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Table App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Table App Welcomes You'),
          actions: <Widget>[],
          ),
          body:  Center(
            child: Text('Welcome to Table App'),
          )
      )
    );
  }
}