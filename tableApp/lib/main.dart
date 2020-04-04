import 'package:flutter/material.dart';
import 'package:tableApp/table.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    home: TableApp()
  ));
}



class StepOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("Hello"),
          Text("This is my first App")
        ],
        )
    );
  }
}


