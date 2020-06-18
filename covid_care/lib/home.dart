import 'package:covidcare/chart.dart';
import 'package:covidcare/constants.dart';
import 'package:covidcare/consultation.dart';
import 'package:flutter/material.dart';

import 'Calendar_Questionaire.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   List<Widget> _widgetOptions = <Widget>[
    Calendar(),
    LChart(),
    Consultation(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Covid Care'),
      ),
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
                icon: Icon(Icons.help),
                title: Text('Consultation')
            )
          ],
        currentIndex: _selectedIndex,
        selectedItemColor: MaterialColor(0XFF94ABF9, primaryColor),
        onTap: _onItemTapped,
      ),
    );
  }
}