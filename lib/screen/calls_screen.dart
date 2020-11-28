import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  final List<String> imageList = [];

  Future callsImage() async {
    // haal willekeurig gebruikers gegevens van a api serves (gratis)
    String urLink = 'https://randomuser.me/api/0.6/?format=SQL&results=10';
    var response = await http.get(urLink);
    Map<String, dynamic> user = jsonDecode(response.body);
    var theObject = user['results'];

    for (int index = 0; index < theObject.length; index++) {
      var define = theObject[index]['user']['picture']['large'];
      print(define);
      imageList.add(define);
    }
    return imageList;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callsImage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.white30,
      child: FutureBuilder(
        future: callsImage(),
        builder: (BuildContext, snapshot) {
          return GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              padding: EdgeInsets.all(4.0),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              children: imageList.map((String url) {
                return Stack(
                  children: [
                    Container(
                      child: GridTile(
                        child: Image.network(url, fit: BoxFit.cover),
                      ),
                    ),
                    Text(
                      'User name',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                );
              }).toList());
        },
      ),
    );
  }
}
