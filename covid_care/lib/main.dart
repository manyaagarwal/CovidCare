import 'package:covidcare/home.dart';
import 'package:covidcare/login.dart';
import 'package:flutter/material.dart';

import 'constants.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: MaterialColor(0XFF94ABF9, primaryColor),
        accentColor: MaterialColor(0XFF43DCBE, accentColor),
       ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: LoginPage(),

    );
  }
}

//rgb(67, 220, 190)
//rgb(69, 198, 230)
//rgb(148, 171, 249)
