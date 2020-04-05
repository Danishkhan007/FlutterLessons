import 'package:flutter/material.dart';
import 'package:tableApp/table.dart';

class TableDisplay extends StatefulWidget {
  @override
  _TableDisplayState createState() => _TableDisplayState();
}

class _TableDisplayState extends State<TableDisplay> {

  int tableValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table With State"),
        actions: <Widget>[],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.blueGrey[400],
       child: Column(
            children: <Widget>[
              SizedBox(
                child: Text("Hello")
              ),
              SizedBox(height: 50),
                  TextField(
                  
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      labelText: "Table Of"
                    ),
                    onChanged: (value) {
                      setState(() {
                        tableValue = int.parse(value);
                      });
                    },
                  ),
              SizedBox(height: 60),
              RaisedButton(
                color: Colors.blue[400],
                child: Text("SHOW TABLE"),
                onPressed: () {
                  }
                ),
            
              MathTable(table: tableValue)
            ],
           
          
      )
    )
    );
  }
}