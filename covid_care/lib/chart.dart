import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Example Dialogflow Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: new LineChartSample1(),
    );
  }
}
class LineChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  bool isShowingMainData;
  var text = "General Trend";
  bool change = false;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(18)),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff2c274c),
                    Color(0xff46426c),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'My Health Overview',
                              style: TextStyle(
                                color: Colors.white,
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
                                      Text(
                                        "Temperature",
                                        style: TextStyle(
                                          color: Colors.white
                                        )
                                      )
                                    ],
                                  )
                                ),
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
                                      Text(
                                        "Heart Rate",
                                        style: TextStyle(
                                          color: Colors.white
                                        )
                                      )
                                    ],
                                  )
                                ),
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
                                      Text(
                                        "Energy",
                                        style: TextStyle(
                                          color: Colors.white
                                        )
                                      )
                                    ],
                                  )
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0, left: 6.0),
                          child: LineChart(
                            sampleData1(),
                            swapAnimationDuration: const Duration(milliseconds: 250),
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
          ),
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
            color: Color(0xff75729e),
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
        border: const Border(   // this is the x axis line thing
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
      maxY: 3.8,  // changed this
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
        FlSpot(5, 2.2),
        FlSpot(6, 1.8),
        FlSpot(7, 3.4),
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
        FlSpot(1, 1),
        FlSpot(3, 2.8),
        FlSpot(7, 1.2),
        FlSpot(10, 2.8),
        FlSpot(12, 2.6),
        FlSpot(13, 2.9),  // changed this
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
        FlSpot(1, 2.8),
        FlSpot(3, 1.9),
        FlSpot(6, 3),
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