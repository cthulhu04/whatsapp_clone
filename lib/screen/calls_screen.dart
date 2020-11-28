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
      print(imageList.length);
      imageList.add(define);
    }
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
      child: FutureBuilder(
        future: callsImage(),
        builder: (BuildContext, snapshot) {
          return Container(
            color: Colors.black,
            child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                children: imageList.map((String url) {
                  return Container(
                    padding: EdgeInsets.zero,
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
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
                    ),
                  );
                }).toList()),
          );
        },
      ),
    );
  }
}
