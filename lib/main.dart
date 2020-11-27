import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/route_constant.dart';
import 'package:whatsapp_clone/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: Login,
    );
  }
}
