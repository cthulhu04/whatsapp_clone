import 'package:flutter/material.dart';

Widget DrawerWidget() {
  return ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        child: Text('Drawer Header'),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      ListTile(
        title: Text('Item 1'),
        onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer
        },
      ),
      ListTile(
        title: Text('Item 2'),
        onTap: () {},
      ),
    ],
  );
}
