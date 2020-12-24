import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/route_constant.dart';
import 'package:whatsapp_clone/screen/login_screen.dart';
import 'package:whatsapp_clone/screen/undefined_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Login:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    default:
      return MaterialPageRoute(builder: (context) => UndefinedScreen());
  }
}
