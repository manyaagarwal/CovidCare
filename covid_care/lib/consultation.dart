import 'package:flutter/material.dart';

//class Mainpage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Center(
//          child: Text(
//            'Sample                                      ',
//            style: TextStyle(
//              color: Colors.white,
//              fontSize: 20.0,
//            ),
//          ),
//        ),
//        backgroundColor: Colors.blueGrey,
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: (){
//          navigateToConsultation(context);
//        },
//        child:
//        Icon(Icons.add),
//        backgroundColor: Colors.blueGrey,
//      ),
//    );
//  }
//}

class Consultation extends StatelessWidget{
  final TextEditingController _texteditcontrol = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: ListView(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top:10, right: 50, left: 5),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child:
                  Text(
                    'Hi Angel, What can I help you with?                                      ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, right: 10, left: 50),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child:
                  Text(
                      'Hi, I wanted to know whether it is safe to get care for my other medical conditions at this time.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, left:10, right: 50),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child:
                  Text(
                    'If you have a chronic health problem, you may be at higher risk for severe illness from COVID-19. Continue your medications, and do not change your treatment plan without talking to your healthcare provider.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, right: 10, left:50),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child:
                  Text(
                    'And am I at a risk for COVID-19 from mail, packages, or products?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, left:10, right:50),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child:
                  Text(
                    'Although the virus can survive for a short period on some surfaces, it is unlikely to be spread from domestic or international mail, products or packaging. However, it may be possible that people can get COVID-19 by touching a surface or object that has the virus on it and then touching their own mouth, nose, or possibly their eyes, but this is not thought to be the main way the virus spreads.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, right: 10, left:50),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child:
                  Text(
                    'Great! Thank you so much!                                                ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom:5, left:10, right:10, top:40),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child:
                     TextField(
                      decoration: InputDecoration(
                        hintText: "Send a message",
                      ),
                    controller: _texteditcontrol,

                    ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}

//Future navigateToConsultation(context) async {
//  Navigator.push(context, MaterialPageRoute(builder: (context) => Consultation()));
//}



