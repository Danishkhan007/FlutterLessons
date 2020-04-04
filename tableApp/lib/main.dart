import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "App",
    home: TableApp()
  ));
}

// class TableApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Table App",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Table App Welcomes You'),
//           actions: <Widget>[],
//           ),
//           body:  Center(
//             child: Text('Welcome to Table App'),
//           )
//       )
//     );
//   }
// }

class TableApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text("Hello"),
          Text("This is my first App")
        ],
        )
    );
  }
}


