import 'package:flutter/material.dart';

Widget bubbleMessage(String msg) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () => print('bubble message'),
          child: Padding(
            padding: const EdgeInsets.only(left: 3),
            child: Container(
              width: 300,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4.0,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(22.0),
                  bottomLeft: Radius.circular(22.0),
                  topRight: Radius.circular(22.0),
                ),
              ),
              child: Text(
                msg,
                style: TextStyle(
                  fontFamily: 'PoppinsRegular',
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
