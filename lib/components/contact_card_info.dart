import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/constants/color_constants.dart';
import 'package:whatsapp_clone/constants/constant_tools.dart';

class ContactCardInfo extends StatelessWidget {
  IconData selectIcon;
  String description;
  String status;

  ContactCardInfo({this.selectIcon, this.description, this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: FaIcon(
              selectIcon,
              color: mainColor,
              size: 27,
            ),
          ),
          SizedBox(width: 25.0),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: contactStyle.copyWith(
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 3.5),
                Text(status,
                    style: contactStyle.copyWith(
                        color: Colors.black54, fontSize: 15.0)),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.5, color: Color(0xFFFFa3a3a3)),
        ),
      ),
    );
  }
}
