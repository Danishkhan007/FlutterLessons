import 'package:flutter/material.dart';

class ListDrawer extends StatefulWidget {
  @override
  _ListDrawerState createState() => _ListDrawerState();
}

class _ListDrawerState extends State<ListDrawer>
   {

  static final numItems = 10;  
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'TABLE APP',
                style: textTheme.headline6
                ),
              subtitle: Text(
                'my first step',
                style: textTheme.headline4,
              ),
            ),
            const Divider(),
            ...Iterable<int>.generate(numItems).toList().map((i){
              return ListTile(
                enabled: true,
                selected: i == selectedItem,
                leading: const Icon(Icons.favorite),
                title: Text(
                  "item" + (i + 1).toString()
                ),
                onTap: () {
                  setState(() {
                    selectedItem = i;
                  });
                },
              );
            })
          ]
        )
      ),
    );
  }
}