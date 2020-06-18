import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covidcare/constants.dart';
import 'package:covidcare/home.dart';
import 'package:covidcare/register.dart';
import 'package:covidcare/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  TextEditingController emailInputController;
  TextEditingController pwdInputController;

  @override
  initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    super.initState();
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  String pwdValidator(String value) {
    if (value.length < 8) {
      return 'Password must be longer than 8 characters';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: SingleChildScrollView(
              child: Form(
                key: _loginFormKey,
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/undraw_medical_care_movn.png"),
                      height: 150,
                    ),
                    SizedBox(height: 25,),
                    Text('Covid Care',
                      style: TextStyle(
                        fontSize: 36,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email*', hintText: "john.doe@gmail.com"),
                      controller: emailInputController,
                      keyboardType: TextInputType.emailAddress,
                      validator: emailValidator,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Password*', hintText: "********"),
                      controller: pwdInputController,
                      obscureText: true,
                      validator: pwdValidator,
                    ),
                    RaisedButton(
                      child: Text("Login"),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: () {
                        if (_loginFormKey.currentState.validate()) {
                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                              email: emailInputController.text,
                              password: pwdInputController.text)
                              .then((authResult) => Firestore.instance
                              .collection("users")
                              .document(authResult.user.uid)
                              .get()
                              .then((DocumentSnapshot result) =>
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage(
                                        title: result["fname"] +
                                            "'s Tasks",
                                        uid: authResult.user.uid,
                                      ))))
                              .catchError((err) => print(err)))
                              .catchError((err) => print(err));
                        }
                      },
                    ),
                    Text("Don't have an account yet?"),
                    FlatButton(
                      child: Text("Register here!"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/register");
                      },
                    )
                  ],
                ),
              ))
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            ),
          );
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 25.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


