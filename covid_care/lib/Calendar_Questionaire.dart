import 'package:covidcare/subpage.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar>{
  CalendarController _controller;
  @override
  void initState(){
    //TODO: implement initState
    super.initState();
    _controller = CalendarController();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
                calendarController: _controller,
                ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          navigateToSubPage(context);
        },
        child:
          Icon(Icons.add),
//        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}


Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
}





