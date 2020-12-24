import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/color_constants.dart';
import 'package:whatsapp_clone/constants/constant_tools.dart';

class ContactCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  'Status',
                  style: contactStyle,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Date',
                  style: contactStyle.copyWith(
                      color: Colors.black54, fontSize: 15.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.0),
          Container(
            child: Text('Lorem ipsum dolor sit amet, consectetur....',
                style: contactStyle.copyWith(
                  color: Colors.black,
                )),
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
