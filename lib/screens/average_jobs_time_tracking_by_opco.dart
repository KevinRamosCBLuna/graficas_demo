// ignore_for_file: avoid_print

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/tablas%20pluto/tabla_average_jobs_tracking.dart';

class AverageJobsTimeTracking extends StatefulWidget {
  const AverageJobsTimeTracking({Key? key}) : super(key: key);

  @override
  State<AverageJobsTimeTracking> createState() => _AverageJobsTimeTrackingState();
}

class _AverageJobsTimeTrackingState extends State<AverageJobsTimeTracking> {
  late double touchedValue;

  @override
  void initState() {
    touchedValue = -1;
    super.initState();
  }

  LineChartBarData CRY() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 1.2),
        FlSpot(1, 0.6),
        FlSpot(2, 0.8),
        FlSpot(3, 0.8),
        FlSpot(4, 0.8),
        FlSpot(5, 0.7),
      ],
      isCurved: false,
      barWidth: 5,
      color: Colors.blue,
      dotData: FlDotData(
        show: true,
      ),
    );
  }

  LineChartBarData ODE() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 1.3),
        FlSpot(1, 2.2),
        FlSpot(2, 1.5),
        FlSpot(3, 1.2),
        FlSpot(4, 4.1),
        FlSpot(5, 1.3),
      ],
      isCurved: false,
      barWidth: 5,
      color: Colors.green,
      dotData: FlDotData(
        show: true,
      ),
    );
  }

  LineChartBarData SMI() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 2.0),
        FlSpot(1, 1.9),
        FlSpot(2, 1.6),
        FlSpot(3, 1.8),
        FlSpot(4, 3.2),
        FlSpot(5, 3.4),
      ],
      isCurved: false,
      barWidth: 5,
      color: Colors.orange,
      dotData: FlDotData(
        show: true,
      ),
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

  Widget bottomTitleWidget(double value, TitleMeta meta) {
    final isTouched = value == touchedValue;
    final style = TextStyle(
      fontSize: 15,
      fontWeight: isTouched ? FontWeight.bold : FontWeight.normal,
      color: isTouched ? Colors.blue : Colors.black,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = "43";
        break;
      case 1:
        text = "44";
        break;
      case 2:
        text = "45";
        break;
      case 3:
        text = "46";
        break;
      case 4:
        text = "47";
        break;
      case 5:
        text = "48";
        break;
      default:
        return Container();
    }

    return SideTitleWidget(
      space: 4,
      axisSide: meta.axisSide,
      child: Text(
        text,
        style: style,
      ),
    );
  }

  TextStyle estilo() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Average jobs Time Tracking'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Center(
                      child: Text(
                    'Average Jobs Time Tracking by OpCo',
                    textAlign: TextAlign.center,
                    style: estilo(),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Indicator(color: Colors.blue, text: 'CRY Job Time Hrs (Average)', isSquare: false, size: 18, textColor: Colors.black),
                    Indicator(color: Colors.green, text: 'ODE Job Time Hrs (Average)', isSquare: false, size: 18, textColor: Colors.black),
                    Indicator(color: Colors.orange, text: 'SMI Job Time Hrs (Average)', isSquare: false, size: 18, textColor: Colors.black),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 850,
                    height: 226,
                    child: AspectRatio(
                      aspectRatio: 1.66,
                      child: LineChart(
                        LineChartData(
                            lineTouchData: LineTouchData(
                                enabled: true,
                                touchTooltipData: LineTouchTooltipData(
                                  tooltipBgColor: const Color.fromARGB(255, 204, 204, 204),
                                  /*getTooltipItems:
                                        (List<LineBarSpot> touchedBarSpots) {
                                      return touchedBarSpots.map((barSpot) {
                                        final flSpot = barSpot;
                                        return LineTooltipItem(
                                          '\$ ${flSpot.y.toString()} \n',
                                          const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        );
                                      }).toList();
                                    }*/
                                ),
                                touchCallback: (FlTouchEvent event, lineTouch) {
                                  if (!event.isInterestedForInteractions || lineTouch == null || lineTouch.lineBarSpots == null) {
                                    setState(() {
                                      touchedValue = -1;
                                    });
                                    return;
                                  }
                                  final value = lineTouch.lineBarSpots![0].x;
                                  setState(() {
                                    touchedValue = value;
                                  });
                                }),
                            lineBarsData: [CRY(), ODE(), SMI()],
                            minY: 0,
                            titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  interval: 1,
                                  getTitlesWidget: bottomTitleWidget,
                                ),
                              ),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: leftTitleWidgets,
                                  interval: 1,
                                  reservedSize: 120,
                                ),
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
                              drawVerticalLine: false,
                              getDrawingHorizontalLine: (value) => FlLine(
                                color: const Color(0xffe7e8ec),
                                strokeWidth: 1,
                              ),
                            ),
                            maxY: 5.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Center(
                      child: Text(
                    'Jobs Time Trend by Hours',
                    textAlign: TextAlign.center,
                    style: estilo(),
                  )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 1005,
                    height: 350,
                    child: TablaAverageJobsTracking(),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
