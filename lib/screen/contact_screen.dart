import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/components/contact_card.dart';
import 'package:whatsapp_clone/components/contact_card_info.dart';
import 'package:whatsapp_clone/constants/constant_tools.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('./images/42.jpg'),
              fit: BoxFit.cover,
            )),
            child: Center(
              child: Text(
                'user profile',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ContactCard(),
          ContactCardInfo(
            selectIcon: FontAwesomeIcons.user,
            description: 'Lamberrta lauren',
            status: 'username',
          ),
          ContactCardInfo(
            selectIcon: FontAwesomeIcons.phoneAlt,
            description: '+91 95 60 505818',
            status: 'Mobile',
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Media',
                  style: contactStyle,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    './images/Cover-for-Places-to-hangout-in-Mumbai-with-friends_16th-Apr.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    './images/meetings-practice.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    './images/oaxiuha2zfwgghn8fji0.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    './images/65535_50433897778_3ee8414717_320_240_nofilter.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
