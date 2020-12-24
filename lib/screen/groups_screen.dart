import 'package:flutter/material.dart';
import 'package:whatsapp_clone/util/data.dart';

class GroupScreen extends StatefulWidget {
  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
          children: groups.map((String url) {
            return Container(
              color: Colors.black,
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  Container(
                    child: GridTile(
                      child: Image.asset(url, fit: BoxFit.cover),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        child: Text(
                          'User name',
                          style: TextStyle(
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(1.5, 5),
                                blurRadius: 3.5,
                                color: Color.fromARGB(248, 0, 0, 0),
                              ),
                            ],
                            color: Colors.white,
                            fontSize: 15.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}
