import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covidcare/constants.dart';
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

  void showVitals(value){
    showDialog(
      context: context, barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title:  Center(child: Text('Health Vitals')),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: [
                Row(
                  children: <Widget>[
                    Icon(
                        Icons.add_circle ,
                        color:  MaterialColor(0XFF43DCBE, accentColor),
                    ),
                    Text("Temperature: "),
                    Text(value.data["temperature"] + " °C"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                        Icons.favorite,
                        color: MaterialColor(0XFF94ABF9, primaryColor),
                    ),
                    Text("Heart Rate: "),
                    Text(value.data["heartbeat"] + "bpm"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                        Icons.flash_on,
                        color: MaterialColor(0XFF43DCBE, accentColor),
                    ),
                    Text("Energy Level: "),
                    Text(value.data["energy"] + " %"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                        Icons.add_alert,
                        color: MaterialColor(0XFF94ABF9, primaryColor),
                    ),
                    Text("Symptoms: "),
                    Text(value.data["symptoms"]),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            new FlatButton(
              child: new Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
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
                    .then((value) =>
                      showVitals(value)
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





