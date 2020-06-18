import 'package:covidcare/constants.dart';
import 'package:flutter/material.dart';

class SubPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Today"),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  height: 10.0
              ),
//              Center(
//                child: Text(
//                  'Today',
//                  style: TextStyle(
//                      fontSize: 30.0,
//                      color: Colors.white,
//                      fontWeight: FontWeight.bold),
//                ),
//              ),
//              SizedBox(
//                  height: 10.0
//              ),
              Text(
                'Input Body Temperature',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: ListTile(
                    leading: Icon(
                        Icons.add_circle ,
                        color: Colors.black
                    ),
                    title: TextField(
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 10.0
              ),
              Text(
                'Measure Heartbeat',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: ListTile(
                    leading: Icon(
                        Icons.favorite,
                        color: Colors.black
                    ),
                    title: TextField(
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 10.0
              ),
              Text(
                'Measure Energy level',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: ListTile(
                    leading: Icon(
                        Icons.flash_on,
                        color: Colors.black
                    ),
                    title: TextField(
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 10.0
              ),
              Text(
                'Input Symptoms',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: ListTile(
                    leading: Icon(
                        Icons.add_alert,
                        color: Colors.black
                    ),
                    title: TextField(
                    ),
                  ),
                ),
              ),
              Text(
                'eg. Headache, Nausea, continuous sneezes etc',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              RaisedButton(
                textColor: Colors.white,
                color: MaterialColor(0XFF94ABF9, primaryColor),
                child: Text('Save'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      );
  }
}