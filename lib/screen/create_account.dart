import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/submit_button.dart';
import 'package:whatsapp_clone/constants/color_constants.dart';
import 'package:whatsapp_clone/constants/constant_tools.dart';
import 'package:whatsapp_clone/screen/whatsapp.dart';
import 'package:whatsapp_clone/services/authentication.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  String email = '';
  String password = '';

  Future createAccount({String email, String password}) async {
    return Auth()
        .createUserAccount(email, password)
        .then((value) => {
              if (value != null)
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WhatsApp(),
                    ),
                  )
                }
            })
        .then((value) => print('create account is success...'))
        .catchError(
          (onError) => print('message $onError'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Column(
              children: [
                Container(
                  height: 200.0,
                  child: Center(
                    child: Text(
                      'Create Account',
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
                            child: Text('email', style: loginStyle),
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
                              },
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Center(child: Text('password', style: loginStyle)),
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
                              },
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Center(
                            child: SubmitButton(
                              title: 'Create Account',
                              function: () => createAccount(
                                  email: this.email, password: this.password),
                            ),
                          )
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
