import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chat_message_bubble_widget.dart';
import 'package:whatsapp_clone/screen/message.dart';
import 'package:whatsapp_clone/services/chat_server.dart';
import 'package:whatsapp_clone/util/data.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  ChatServers _chatServers = ChatServers();

  CollectionReference messageData = FirebaseFirestore.instance
      .collection('users')
      .doc('iDeA33Tgw5THxXbAL7e2')
      .collection('message')
      .doc('1G0NV7nZp8eAVvHNxekE')
      .collection('message');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: users
          .map(
            (user) => GestureDetector(
              child: ChatMessageCardWidget(
                userImg: user.userImg,
                name: user.name,
                lastName: user.lastName,
                date: user.date,
                message: user.message.last,
              ),
              onTap: () {
                print('message screen');
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Message(message: user.message);
                }));
              },
            ),
          )
          .toList(),
    );
  }
}
