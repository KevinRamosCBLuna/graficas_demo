// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/screens.dart';

class LastWeekJobsTypeTracking extends StatefulWidget {
  const LastWeekJobsTypeTracking({Key? key}) : super(key: key);

  @override
  State<LastWeekJobsTypeTracking> createState() => _LastWeekJobsTypeTrackingState();
}

class _LastWeekJobsTypeTrackingState extends State<LastWeekJobsTypeTracking> {
  int touchedIndex = -1;
  BarChartGroupData generateGroupData(int x, double disc, insta, n3, servi) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
      barRods: [
        BarChartRodData(fromY: 0, toY: disc, color: Colors.red, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: disc, toY: disc + insta, color: Colors.green, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: disc + insta, toY: disc + insta + n3, color: Colors.grey, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: disc + insta + n3, toY: disc + insta + n3 + servi, color: Colors.orange, width: 50, borderRadius: BorderRadius.zero)
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '43';
        break;
      case 1:
        text = '44';
        break;
      case 2:
        text = '45';
        break;
      case 3:
        text = '46';
        break;
      case 4:
        text = '47';
        break;
      case 5:
        text = '48';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 15,
      color: Colors.black,
      //fontWeight: FontWeight.bold,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        '$value',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Last Week Jobs Type Tracking'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Last Week Jobs Type Tracking',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                 const Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  <Widget>[
                      Indicator(color: Colors.red, text: 'Disconect opco (Count(All))', isSquare: false, size: 16, textColor: Colors.black),
                      Indicator(color: Colors.green, text: 'Install opco (Count(All))', isSquare: false, size: 16, textColor: Colors.black),
                      Indicator(color: Colors.grey, text: 'n3 opco (Count(All))', isSquare: false, size: 16, textColor: Colors.black),
                      Indicator(color: Colors.orange, text: 'Service opco (Count(All))', isSquare: false, size: 16, textColor: Colors.black),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: 800,
                      height: 350,
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.center,
                          barTouchData: BarTouchData(
                            enabled: true,
                            touchTooltipData: BarTouchTooltipData(
                                tooltipBgColor: const Color.fromARGB(255, 204, 204, 204),
                                getTooltipItem: (group, groupIndex, rod, rodIndex) {
                                  String n1, n2, n3, n4;
                                  switch (group.x.toInt()) {
                                    case 0:
                                      n1 = '11';
                                      n2 = '45';
                                      n3 = '16';
                                      n4 = '107';
                                      break;
                                    case 1:
                                      n1 = '10';
                                      n2 = '31';
                                      n3 = '3';
                                      n4 = '95';
                                      break;
                                    case 2:
                                      n1 = '7';
                                      n2 = '39';
                                      n3 = '12';
                                      n4 = '95';
                                      break;
                                    case 3:
                                      n1 = '15';
                                      n2 = '32';
                                      n3 = '5';
                                      n4 = '124';
                                      break;
                                    case 4:
                                      n1 = '13';
                                      n2 = '37';
                                      n3 = '9';
                                      n4 = '136';
                                      break;
                                    case 5:
                                      n1 = '7';
                                      n2 = '19';
                                      n3 = '4';
                                      n4 = '67';
                                      break;
                                    default:
                                      throw Error();
                                  }
                                  return BarTooltipItem(
                                    '$n1\n',
                                    const TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '$n2\n',
                                        style: const TextStyle(
                                          color: Colors.green,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '$n3\n',
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: n4,
                                        style: const TextStyle(
                                          color: Colors.orange,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                            touchCallback: (FlTouchEvent event, barTouchResponse) {
                              setState(() {
                                if (!event.isInterestedForInteractions || barTouchResponse == null || barTouchResponse.spot == null) {
                                  touchedIndex = -1;
                                  return;
                                }
                                touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
                              });
                            },
                          ),
                          titlesData: FlTitlesData(
                            show: true,
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: true, reservedSize: 30, interval: 1, getTitlesWidget: bottomTitles),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: true, reservedSize: 50, interval: 50, getTitlesWidget: leftTitleWidgets),
                            ),
                            topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                          ),
                          gridData: FlGridData(
                              show: true,
                              getDrawingHorizontalLine: (value) => FlLine(
                                    color: const Color(0xffe7e8ec),
                                    strokeWidth: 1,
                                  ),
                              drawHorizontalLine: true,
                              drawVerticalLine: false),
                          borderData: FlBorderData(
                            show: true,
                          ),
                          maxY: 200,
                          groupsSpace: 25,
                          barGroups: [
                            generateGroupData(0, 11, 45, 16, 107),
                            generateGroupData(1, 10, 31, 3, 95),
                            generateGroupData(2, 7, 39, 12, 95),
                            generateGroupData(3, 15, 32, 5, 124),
                            generateGroupData(4, 13, 37, 9, 136),
                            generateGroupData(5, 7, 19, 4, 67),
                          ],
                          //barGroups: getData(),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: SizedBox(width: 1204, height: 280, child: TablaLastWeekJobs()),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
