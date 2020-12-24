import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/route_constant.dart';
import 'package:whatsapp_clone/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _firebaseApp = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _firebaseApp,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print('there is a error here ${snapshot.hasError.toString()}');
          return Text('there is a error here ${snapshot.hasError.toString()}');
        } else if (snapshot.hasData) {
          print('we have data ${snapshot.hasData}');
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: generateRoute,
            initialRoute: Login,
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
