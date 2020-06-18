import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covidcare/constants.dart';
import 'package:flutter/material.dart';
class SubPage extends StatefulWidget{
  final String uid;
  SubPage({Key key, this.uid}) : super(key: key);

  @override
  _SubPageState createState() => _SubPageState();
}

class _SubPageState extends State<SubPage>{

  final GlobalKey<FormState> _vitalsFormKey = GlobalKey<FormState>();
  TextEditingController bodyTempInputController;
  TextEditingController heartBeatInputController;
  TextEditingController energyLevelInputController;
  TextEditingController symptomsInputController;

  @override
  initState(){
    bodyTempInputController = new TextEditingController();
    heartBeatInputController = new TextEditingController();
    energyLevelInputController = new TextEditingController();
    symptomsInputController = new TextEditingController();
    super.initState();
    print('uid subpage:');
    print(widget.uid);
  }

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
                    title: TextFormField(
                      controller: bodyTempInputController,
                      keyboardType: TextInputType.number,
                    ),
                    trailing: Text("C"),
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
                    title: TextFormField(
                      controller: heartBeatInputController,
                      keyboardType: TextInputType.number,
                    ),
                    trailing: Text("BPM"),
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
                    title: TextFormField(
                      controller: energyLevelInputController,
                      keyboardType: TextInputType.number,
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
                    title: TextFormField(
                      controller: symptomsInputController,
                      keyboardType: TextInputType.text,
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
                  DateTime today = DateTime.now();
                  String todayString = today.day.toString() + today.month.toString() + today.year.toString();
                  Firestore.instance.collection("users")
                      .document(widget.uid)
                      .collection("vitals")
                      .document(todayString)
                      .setData({
                    'temperature' : bodyTempInputController.text,
                    'heartbeat' : heartBeatInputController.text,
                    'energy' : energyLevelInputController.text,
                    'symptoms' : symptomsInputController.text,
                  }).then((value) =>
                      Navigator.pop(context)
                  );
                },
              )
            ],
          ),
        ),
      );
  }
}