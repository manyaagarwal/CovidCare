import 'package:covidcare/home.dart';
import 'package:flutter/material.dart';

import 'Calendar_Questionaire.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         primarySwatch: Colors.blue,
       ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: HomePage(),

    );
  }
}

