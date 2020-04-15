import 'dart:async';

import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  @override
  _StopWatchState createState() => _StopWatchState();
}


class _StopWatchState extends State<StopWatch> {
  
  
  int time = 0;
  var timer;
 
  stopWatch() {

    

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        time = time + 1;
      });
    });
  }

  stop(){
    timer.cancle();
  }

//================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stop Watch"),
        actions: <Widget>[
          Text("delete"),
          Text("Back"),

        ]
        ),

      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 100),
        color: Colors.blue[200],
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              color: Colors.green[500],
              shape: BoxShape.rectangle
            ),
            
            child: Text(time.toString(), 
              style: TextStyle(color: Colors.white, fontSize: 20)
            )
          ),
          RaisedButton(
                          padding: EdgeInsets.all(5.0),

            color: Colors.green[500],
            child: Text("Start"),

            onPressed: () => stopWatch()),
            RaisedButton(
              padding: EdgeInsets.all(5.0),
            color: Colors.red[500],
            child: Text("Stop"),

            onPressed: () => stopWatch())

        ],)

    )
    );
  }
}

/*Function: xyz() {

}

xyz() => print(hello)

() => print() used callback

*/