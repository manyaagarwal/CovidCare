import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

//The main function is the starting point for all flutter apps
void main() {
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
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
      appBar: AppBar(
        title: Text('Calendar'),
        backgroundColor: Colors.blueGrey,
      ),
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
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}

class SubPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text('Dashboard')),
          backgroundColor: Colors.blueGrey[600],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  height: 10.0
              ),
              Center(
                child: Text(
                  'Today',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                  height: 10.0
              ),
              Text(
                'Input Body Temperature',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                color: Colors.grey,
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
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                color: Colors.grey,
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
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                color: Colors.grey,
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
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                color: Colors.grey,
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
                  color: Colors.white,
                ),
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.grey,
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

Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
}





