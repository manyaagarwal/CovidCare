import 'package:covidcare/faq.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class LineChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  bool isShowingMainData;
  var text = "General Trend";
  bool change = false;
  var en = "High";
  var tem = "Standard";
  var hr = "Low";
  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                    navigateToFAQ(context);
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
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'My Health Trend',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                          width: 100,
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                height: 5,
                                                width: 5,
                                                color: Color(0xff4af699),
                                              ),
                                              SizedBox(width: 10),
                                              Text("Energy"),
                                            ],
                                          )),
                                      Container(
                                          width: 100,
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                height: 5,
                                                width: 5,
                                                color: Color(0xffaa4cfc),
                                              ),
                                              SizedBox(width: 10),
                                              Text("Heart Rate"),
                                            ],
                                          )),
                                      Container(
                                          width: 100,
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                height: 5,
                                                width: 5,
                                                color: Color(0xff27b6fc),
                                              ),
                                              SizedBox(width: 10),
                                              Text("Temperature"),
                                            ],
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 16.0, left: 6.0),
                                child: LineChart(
                                  sampleData1(),
                                  swapAnimationDuration:
                                      const Duration(milliseconds: 250),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // end of that Graph

          // Conclusion Box
          Container(
              padding: EdgeInsets.fromLTRB(25, 18, 25, 22), 
              margin: EdgeInsets.all(15), 
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
              child: Wrap(
                runSpacing: 15,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Today's Status",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 90,
                        child: Text(
                          "Energy",
                        ),
                      ),
                      Text(" : "),
                      Text(
                        "$en",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 90,
                        child: Text(
                          "Temperature",
                        ),
                      ),
                      Text(" : "),
                      Text(
                        "$tem",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent[400],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 90,
                        child: Text(
                          "Heart Rate",
                        ),
                      ),
                      Text(" : "),
                      Text(
                        "$hr",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      )
                    ],
                  ),
                ],
              )),
          // end of Conclusion Box

          // Message
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
            child: Text( 
              "Monitor your health regulary and take preventinve measures to help fight COVID-19. If you have concerning symptoms, do not hestitate to reach for medical advices available on this app. We are here to help!❤️"
            ) 
          ),
          // end of That Extra Box
          
        ],
      ),
    );
  }

  LineChartData sampleData1() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: true,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          textStyle: const TextStyle(
            color: Color(0xff72719b),
            fontWeight: FontWeight.bold,
            fontSize: 12.5,
          ),
          margin: 10, // distance between line and no
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '1';
              case 1:
                return '2';
              case 2:
                return '3';
              case 3:
                return '4';
              case 4:
                return '5';
              case 5:
                return '6';
              case 6:
                return '7';
              case 7:
                return '8';
              case 8:
                return '9';
              case 9:
                return '10';
              case 10:
                return '11';
              case 11:
                return '12';
              case 12:
                return '13';
              case 13:
                return '14';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'Low';
              case 2:
                return 'Standard';
              case 3:
                return 'High';
            }
            return '';
          },
          margin: 10,
          reservedSize: 38,
        ),
      ),

      borderData: FlBorderData(
        show: true,
        border: const Border(
          // this is the x axis line thing
          bottom: BorderSide(
            color: Color(0xff4e4965),
            width: 5, // thickness of line
          ),
          left: BorderSide(
            color: Colors.transparent,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      minX: 0,
      maxX: 14,
      maxY: 3.8, // changed this
      minY: 0,
      lineBarsData: linesBarData1(),
    );
  }
  // The sequence of input i.e. 2nd day => x = n-1
  // Low  y<=1,
  // Standard 1<y<3,
  // High y >=3,
  // Y axis for temp = temp- 35.6 +1;
  // Y axis for Heartbeat = Heartbeat/50 + 0.8
  // Y axis for Energy => low = 1, std = 2, high =3

  List<LineChartBarData> linesBarData1() {
    final LineChartBarData lineChartBarData1 = LineChartBarData(
      spots: [
        FlSpot(0, 3),
        FlSpot(1, 1.5),
        FlSpot(2, 1.4),
        FlSpot(4, 2),
        FlSpot(7, 2.2),
        FlSpot(10, 1.8),
        FlSpot(13, 3.4),
      ],
      isCurved: true,
      colors: [
        const Color(0xff4af699),
      ],
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    final LineChartBarData lineChartBarData2 = LineChartBarData(
      spots: [
        FlSpot(0, 1),
        FlSpot(3, 2.8),
        FlSpot(7, 1.2),
        FlSpot(10, 2.8),
        FlSpot(12, 2.6),
        FlSpot(13, 2.9), // changed this
      ],
      isCurved: true,
      colors: [
        const Color(0xffaa4cfc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(show: false, colors: [
        const Color(0x00aa4cfc),
      ]),
    );
    final LineChartBarData lineChartBarData3 = LineChartBarData(
      spots: [
        FlSpot(0, 2.8),
        FlSpot(3, 2),
        FlSpot(6, 1.5),
        FlSpot(10, 1.3),
        FlSpot(13, 2.5),
      ],
      isCurved: true,
      colors: const [
        Color(0xff27b6fc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    return [
      lineChartBarData1,
      lineChartBarData2,
      lineChartBarData3,
    ];
  }
}

Future navigateToFAQ(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => FAQpage()));
}

