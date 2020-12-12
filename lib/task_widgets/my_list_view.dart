import 'package:flutter/material.dart';

class MyListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text("Drawer Header"),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Text("Item 1"),
          Divider(),
          Text("Item 2"),
          Divider(),
          Text("Item 3"),
          Divider(),
          Text("Item 4"),
          Divider(),
        ],
      ),
    );
  }
}
