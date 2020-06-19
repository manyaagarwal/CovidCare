import 'package:covidcare/chart.dart';
import 'package:covidcare/constants.dart';
import 'package:covidcare/consultation.dart';
import 'package:flutter/material.dart';

import 'Calendar_Questionaire.dart';

class HomePage extends StatefulWidget {
  final String title;
  final String uid;
  HomePage({Key key, this.title, this.uid}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _selectedIndex = 0;
  static String userId;
  List<Widget> _widgetOptions;

  @override
  initState(){
    userId = widget.uid;
    print("userId");
    print(userId);
    _widgetOptions = <Widget>[
      Calendar(uid:userId),
      LineChartSample1(),
      Consultation(),
    ];
    super.initState();
  }
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);


   List<Widget> _appBar = <Widget>[
     AppBar(
       title: Text("Daily Overview"),
     ),
     AppBar(
       title: Text("Health Overview"),
       actions: <Widget>[
         IconButton(
           icon: Icon(
             Icons.assessment,
             color: Colors.white,
             size: 30,
           ),
         ),
       ],
     ),
     AppBar(
       title: Text("Dr. John Doe"),
       actions: <Widget>[
         IconButton(
           icon: Icon(
             Icons.video_call,
             color: Colors.white,
             size: 30,
           ),
         ),
       ],
     ),
   ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar.elementAt(_selectedIndex) ,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: const<BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                title: Text('Calendar')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.multiline_chart),
                title: Text('Stats')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                title: Text('Consultation')
            ),
          ],
        currentIndex: _selectedIndex,
        selectedItemColor: MaterialColor(0XFF94ABF9, primaryColor),
        onTap: _onItemTapped,
      ),
    );
  }
}