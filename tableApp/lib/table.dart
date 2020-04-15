import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TableApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Table App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MATH APP'),
          ),
          body:    Container(
            padding: EdgeInsets.all(10),

         child: Column(
            children: <Widget>[
              SizedBox(
                child: Text("Hello rrrr")
              ),
              SizedBox(height: 50),
                  TextField(
                  
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "Table Of hello"
                    ),
                    
                  ),
              SizedBox(height: 60),
              RaisedButton(
                color: Colors.blue[400],
                child: Text("SHOW TABLE"),
                onPressed: () {
                  MathTable(table: 2);
                }
                )
            ],
           
          
      )
    )
    ));
  }
}

class MathTable extends StatelessWidget {

  
  MathTable({Key key, this.table}): super(key: key);

  final int table;

  @override 
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
           for(var i = 1; i <= 10; i++)
           Text(table.toString() + "*" + i.toString() + "=" + (table * i).toString(), style: TextStyle(color: Colors.black))

      ],)
    );
  }
}

// class TableOperation {

//   int tableValue;
//   showTable() {
//     for(var i = 0; i < 10; i++) {

//     }
//   }
// }