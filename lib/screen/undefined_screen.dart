import 'package:flutter/material.dart';

class UndefinedScreen extends StatefulWidget {
  @override
  _UndefinedScreenState createState() => _UndefinedScreenState();
}

class _UndefinedScreenState extends State<UndefinedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('undefined screen'),
      ),
    );
  }
}
