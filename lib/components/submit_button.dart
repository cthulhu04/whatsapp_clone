import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/color_constants.dart';

Widget SubmitButton({String title, Function function}) {
  return FlatButton(
    onPressed: function,
    color: mainColor,
    child: Container(
      width: 120.0,
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
