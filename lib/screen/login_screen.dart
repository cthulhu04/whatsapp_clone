import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/color_constants.dart';
import 'package:whatsapp_clone/components/input_field.dart';
import 'package:whatsapp_clone/screen/create_account.dart';
import 'package:whatsapp_clone/screen/whatsapp.dart';
import 'package:whatsapp_clone/services/authentication.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';

  String password = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (BuildContext, snapshot) {
            return Column(
              children: [
                Container(
                  height: 200.0,
                  child: Center(
                    child: Text(
                      'Welcome Logo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(900.0),
                      topRight: Radius.circular(900.0),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width / 1,
                    child: Form(
                      child: ListView(
                        children: [
                          Center(
                            child: Text('Username or email'),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              autofocus: false,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: mainColor,
                                  ),
                                ),
                              ),
                              onChanged: (val) {
                                email = val;
                                print(val);
                              },
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Center(child: Text('password')),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              autofocus: false,
                              obscureText: true,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: mainColor,
                                  ),
                                ),
                              ),
                              onChanged: (val) {
                                password = val;
                                print(val);
                              },
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlatButton(
                                onPressed: () async {
                                  dynamic user = Auth()
                                      .signIn(email, password)
                                      .then((value) => {
                                            if (value != null)
                                              {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        WhatsApp(),
                                                  ),
                                                )
                                              }
                                          })
                                      .catchError(
                                        (onError) => print('message $onError'),
                                      );
                                },
                                color: Colors.red,
                                child: Text('login'),
                              ),
                              SizedBox(width: 20.0),
                              FlatButton(
                                onPressed: () async {
                                  return Auth().LogOut();
                                },
                                color: Colors.red,
                                child: Text('logout'),
                              ),
                              SizedBox(width: 20.0),
                              FlatButton(
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CreateAccountScreen(),
                                    ),
                                  );
                                },
                                color: Colors.red,
                                child: Text('Create Account'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
