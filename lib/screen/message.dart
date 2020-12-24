import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/bubble_message.dart';
import 'package:whatsapp_clone/constants/color_constants.dart';
import 'dart:io';

class Message extends StatefulWidget {
  List<dynamic> message;

  Message({this.message});
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: mainColor,
        title: Text('Whatsapp clone'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/795cabc4647f73b365e2e6eabd0f34dc.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: widget.message.map((e) {
                  return bubbleMessage(e.toString());
                }).toList(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Icon(Icons.add_circle_outline),
                    onTap: () {
                      print('image/gif');
                    },
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'message'),
                      onChanged: (val) {
                        print(val);
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print('photo camera'),
                    child: Icon(Icons.photo_camera),
                  ),
                  GestureDetector(
                    onTap: () => print('mic sound'),
                    child: Icon(Icons.mic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
