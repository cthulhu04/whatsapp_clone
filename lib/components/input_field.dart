import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/color_constants.dart';

Widget InputField(String value, bool obscureText) {
  return TextFormField(
    autofocus: false,
    obscureText: obscureText,
    decoration: InputDecoration(
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: mainColor,
        ),
      ),
    ),
    onChanged: (val) {
      print(val);
    },
  );
}
