import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/components/Drawer_widget.dart';
import 'package:whatsapp_clone/constants/color_constants.dart';
import 'package:whatsapp_clone/screen/calls_screen.dart';
import 'package:whatsapp_clone/screen/contact_screen.dart';
import 'package:whatsapp_clone/screen/groups_screen.dart';
import 'package:whatsapp_clone/screen/message_screen.dart';
import 'package:whatsapp_clone/data/firestore.dart';
import 'package:whatsapp_clone/constants/constant_tools.dart';

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp>
    with SingleTickerProviderStateMixin {
  final Firestore _firestore = Firestore();
  TabController _tabController;
  int _selectedIndex = 0;

  List<IconData> listIcon = [
    FontAwesomeIcons.phone,
    FontAwesomeIcons.comments,
    FontAwesomeIcons.plus,
    FontAwesomeIcons.plus,
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: listIcon.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

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
              Tab(
                  child: Text(
                'calls',
                style: appBarTextStyle,
              )),
              Tab(
                  child: Text(
                'chats',
                style: appBarTextStyle,
              )),
              Tab(
                  child: Text(
                'groups',
                style: appBarTextStyle,
              )),
              Tab(
                  child: Text(
                'contact',
                style: appBarTextStyle,
              )),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            CallsScreen(),
            MessageScreen(),
            GroupScreen(),
            ContactScreen(),
          ],
        ),
        drawer: Drawer(
          child: DrawerWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: mainColor,
          onPressed: () {
            // Add your onPressed code here
          },
          child: FaIcon(listIcon[_selectedIndex]),
        ),
      ),
    );
  }
}
