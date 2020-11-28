import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/drawer_button_widget.dart';

Widget DrawerWidget() {
  return ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Drawer Header',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://loremflickr.com/cache/resized/65535_50433897778_3ee8414717_320_240_nofilter.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: 350.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              onTap: () {},
              title: DrawerButtonWidget(Icons.star, 'Favorite'),
            ),
            ListTile(
              onTap: () {},
              title: DrawerButtonWidget(Icons.info, 'Status'),
            ),
            ListTile(
              onTap: () {},
              title: DrawerButtonWidget(Icons.person_rounded, 'Profile'),
            ),
            ListTile(
              onTap: () {},
              title: DrawerButtonWidget(Icons.settings, 'Settings'),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'About',
                ),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {},
                child: Text('Feed back'),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
