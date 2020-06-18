import 'package:flutter/material.dart';

class FAQpage extends StatefulWidget {
  @override
  _FAQpageState createState() => _FAQpageState();
}

class _FAQpageState extends State<FAQpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FAQs",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // COVID-19 FAQS
                  Container(
                    margin: EdgeInsets.only(top: 25, left: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "COVID-19 FAQs",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  //

                  // Question and Answer Container
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.08),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ExpansionTile(
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "What are the symptoms of Covid-19",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        // when expanded, this is shown
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              left: 16,
                              bottom: 12,
                              right: 16,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Fever, Cough, Shortness of breath, Fatigue, Muscle or Body aches, New Loss of taste/ smell, Sore throat, congestion or runny nose, Nausea, Diarrhea.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                        // end of expanded
                      ),
                    ),
                  ),
                  // end of QnA Container

                  // Question and Answer Container
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.08),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ExpansionTile(
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Who is at higher risk of being severely affected by Covid-19?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        // when expanded, this is shown
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              left: 16,
                              bottom: 12,
                              right: 16,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Older adults and people who have severe underlying medical conditions like heart or lung disease or diabetes seem to be at higher risk for developing more serious complications from COVID-19 illness.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                        // end of expanded
                      ),
                    ),
                  ),
                  // end of QnA Container

                  // Question and Answer Container
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.08),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ExpansionTile(
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "When to seek Emergency Medical Attention ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        // when expanded, this is shown
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              left: 16,
                              bottom: 12,
                              right: 16,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Trouble breathing, Persistent pain or pressure in the chest, Inability to wake or stay awake , or other symptoms that are severe or concerning to you",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                        // end of expanded
                      ),
                    ),
                  ),
                  // end of QnA Container

                  // Question and Answer Container
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.08),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ExpansionTile(
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Should I take the viral test?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        // when expanded, this is shown
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              left: 16,
                              bottom: 12,
                              right: 16,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Not everyone needs to be tested COVID-19, however it is advisable for you to do so if: You have signs or symptoms consistent with Covid-19, have been exposed to individuals with known or suspected exposure to Covid-19 and or have a travel history in the past 14 days.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                        // end of expanded
                      ),
                    ),
                  ),
                  // end of QnA Container

                  // Question and Answer Container
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.08),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ExpansionTile(
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "What should I do after the viral test?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        // when expanded, this is shown
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              left: 16,
                              bottom: 12,
                              right: 16,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "	If you're tested positive for COVID-19:\nStay home except to get medical care; Most people with Covid-19 have mild illness and can recover at home without medical care.Get rest and stay hydrated.Take over-the-counter medicines, such as acetaminophen, to help you feel better.Stay in touch with your doctor.Be sure to get care if you have trouble breathing or have any other emergency warning signs.Separate yourself from other people.Monitor your health symtoms.\n\n\nIf you're tested negative for COVID-19:\nYou probably were not infected at the time your sample was collected. However, that does not mean you will not get sick. The test result only means that you did not have COVID-19 at the time of testing.Preventive measures should still be performed continuosly to protect yourself and others.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                        // end of expanded
                      ),
                    ),
                  ),
                  // end of QnA Container

                  // Question and Answer Container
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.08),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ExpansionTile(
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "What kind of protective measures should I take to protect myself and others?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        // when expanded, this is shown
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              left: 16,
                              bottom: 12,
                              right: 16,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Wash your hands often\nAvoid close contact\nCover your mouth and nose with cloth cover when around others.\nClean and Disinfect\nMonitor your health regularly",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ),
                        ],
                        // end of expanded
                      ),
                    ),
                  ),
                  // end of QnA Container
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
