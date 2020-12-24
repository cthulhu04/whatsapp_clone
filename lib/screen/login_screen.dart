import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/submit_button.dart';
import 'package:whatsapp_clone/constants/color_constants.dart';
import 'package:whatsapp_clone/components/input_field.dart';
import 'package:whatsapp_clone/constants/constant_tools.dart';
import 'package:whatsapp_clone/screen/create_account.dart';
import 'package:whatsapp_clone/screen/whatsapp.dart';
import 'package:whatsapp_clone/services/authentication.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Future<FirebaseApp> _firebaseApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: FutureBuilder(
          future: _firebaseApp,
          builder: (BuildContext context, AsyncSnapshot<FirebaseApp> snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('hs error ${snapshot.hasError}'),
              );
            }

            if (snapshot.connectionState == ConnectionState.done) {
              return LoginWidget();
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  String email = '';

  String password = '';

  Future loginAuthentication({String email, String password}) async {
    return await Auth()
        .signIn(email, password)
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
        .catchError(
          (onError) => print('message $onError'),
        );
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200.0,
          child: Center(
            child: Text(
              'Welcome',
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
                  Center(
                    child: Text('password', style: loginStyle),
                  ),
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SubmitButton(
                        title: 'Login',
                        function: () => loginAuthentication(
                            email: this.email, password: this.password),
                      ),
                      SizedBox(height: 20.0),
                      GestureDetector(
                        onTap: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateAccountScreen(),
                            ),
                          );
                        },
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
  }
}
