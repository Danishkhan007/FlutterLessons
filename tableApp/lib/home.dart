import 'package:flutter/material.dart';
import 'package:tableApp/navigation/drawer.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        actions: <Widget>[]
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         child: Text('Menu'),
      //         decoration: BoxDecoration(
      //           color: Colors.orange[200]
      //         ),
      //         ),
      //        ListTile(
      //          title: Text('Item 1'),
      //          onTap: () {
      //            Navigator.pop(context);
      //          },
      //        ),
      //        ListTile(
      //          title: Text('Item 2'),
               
      //        )
      //     ]
      //   )
      // ),
      drawer: ListDrawer(),
      body: Container(
          child: Text("HOME")
        )

    );
  }
}