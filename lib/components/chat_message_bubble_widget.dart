import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget ChatMessageCardWidget({
  String userImg,
  String name,
  String lastName,
  String date,
  String message,
}) {
  return Container(
    child: Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('./images/$userImg.jpg'),
              radius: 30.0,
              child: null,
            ),
            SizedBox(width: 12.0),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 300.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          '$name $lastName',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Text('$date'),
                      ],
                    ),
                  ),
                  Container(
                    width: 300.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 200.0,
                          child: Text(
                            '$message',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
