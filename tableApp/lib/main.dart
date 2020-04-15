import 'package:flutter/material.dart';
import 'package:tableApp/sample.dart';
import 'package:tableApp/stopWatch.dart';
import 'package:tableApp/table.dart';
import 'package:tableApp/tableWithState.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    home: ControlScreen()
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

class ControlScreen extends StatelessWidget {


  Widget listDisplay() {
    return  ListView(
              children: <Widget>[
                  Text("Hello")
                
              ],
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        actions: <Widget>[],),
        body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 40),


        child: Column(
          children: <Widget>[
            RaisedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(builder: (context) => new Sample()),
              );
            },
            color: Colors.blue[200],
            child: Text("ListView"), 
            ),

            RaisedButton(onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute<void>(builder: (context) => new TableDisplay()),
              );
            },
             color: Colors.green[200],
            child: Text("Math Table"), 
            ),
           
             RaisedButton(onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute<void>(builder: (context) => new StopWatch()),
              );
            },
             color: Colors.red[200],
            child: Text("Stop Watch"), 
            )
          ],
        ),
        ),
    );
  }
}


/*
Navigator.push(
                context,
                MaterialPageRoute<void>(builder: (context) => new Sample()),
              );

*/

