import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/Drawer_widget.dart';
import 'package:whatsapp_clone/constants/color_constants.dart';
import 'package:whatsapp_clone/constants/constant_tools.dart';
import 'dart:async';

import 'package:whatsapp_clone/screen/calls_screen.dart';

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TabController _tabController;

  List<IconData> changFloatBtnIcons = [
    Icons.phone,
    Icons.chat,
    Icons.add_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Text('Whatsapp clone'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(child: Text('calls')),
              Tab(child: Text('chats')),
              Tab(child: Text('groups')),
              Tab(child: Text('contact')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CallsScreen(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
        drawer: Drawer(
          child: DrawerWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: mainColor,
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.navigation),
        ),
      ),
    );
  }
}
