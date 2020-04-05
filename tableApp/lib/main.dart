import 'package:flutter/material.dart';
import 'package:tableApp/table.dart';
import 'package:tableApp/tableWithState.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    home: TableDisplay()
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


