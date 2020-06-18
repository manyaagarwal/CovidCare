import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covidcare/faq.dart';
import 'package:covidcare/subpage.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  final String uid;
  Calendar({Key key, this.uid}) : super (key:key);
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
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(25, 18, 25, 22),
                margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.08),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    navigateToFAQ(context, widget.uid);
                    },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.help, size: 25,),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        width: MediaQuery.of(context).size.width - 150,
                        child: Text("Check our Frequently Asked Questions to clarify common doubts!"),
                      )
                    ],
                  ),
                )
            ),
            TableCalendar(
                calendarController: _controller,
                onDayLongPressed: (date, list) {
                  String id = date.day.toString()+date.month.toString()+date.year.toString();
                  Firestore.instance
                    .collection("users")
                    .document(widget.uid)
                    .collection("vitals")
                    .document(id)
                    .get()
                    .then((value) => {
                    print(value.data)
                  }
                  );
                },

                ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          navigateToSubPage(context, widget.uid);
        },
        icon: Icon(Icons.add),
        label: Text("Add health vitals"),
      ),
    );
  }
}


Future navigateToSubPage(context,uid) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage(uid: uid)));
}

Future navigateToFAQ(context, uid) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => FAQpage(uid: uid)));
}





