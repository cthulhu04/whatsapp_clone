import 'package:flutter/material.dart';

Widget DrawerButtonWidget(IconData icons, String value) {
  return Row(
    children: [
      Icon(icons, size: 32.0),
      SizedBox(width: 15.0),
      Text('$value', style: TextStyle(fontSize: 14.0)),
    ],
  );
}
