import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/tablas%20pluto/tabla_average_jobs_time_tracking_by_tech.dart';
import 'package:graficas_demo/theme/app_theme.dart';

class AverageJobsTimeTrackingByTech extends StatefulWidget {
  const AverageJobsTimeTrackingByTech({Key? key}) : super(key: key);

  @override
  State<AverageJobsTimeTrackingByTech> createState() => _AverageJobsTimeTrackingByTechState();
}

class _AverageJobsTimeTrackingByTechState extends State<AverageJobsTimeTrackingByTech> {
  late double touchedValue;
  Color c1 = Colors.red,
      c2 = Colors.green,
      c3 = Colors.grey,
      c4 = Colors.orange,
      c5 = Colors.yellow,
      c6 = Colors.cyan,
      c7 = const Color.fromARGB(255, 175, 114, 76),
      c8 = const Color.fromARGB(255, 228, 29, 205),
      c9 = const Color.fromARGB(255, 140, 225, 129),
      c10 = const Color.fromARGB(255, 250, 112, 112),
      c11 = const Color.fromARGB(255, 220, 168, 11),
      c12 = Colors.red,
      c13 = Colors.green,
      c14 = Colors.grey,
      c15 = Colors.orange,
      c16 = Colors.yellow,
      c17 = Colors.cyan,
      c18 = const Color.fromARGB(255, 175, 114, 76),
      c19 = const Color.fromARGB(255, 228, 29, 205);
  @override
  void initState() {
    touchedValue = -1;
    super.initState();
  }

  LineChartBarData line(double x, y, Color color) {
    return LineChartBarData(
      spots: [
        FlSpot(x, y),
      ],
      isCurved: false,
      barWidth: 5,
      color: color,
      dotData: FlDotData(
        show: true,
      ),
    );
  }

  List<LineChartBarData> getData(double x, y, Color color) {
    return [
      LineChartBarData(
        spots: [
          FlSpot(x, y),
        ],
        isCurved: false,
        barWidth: 5,
        color: color,
        dotData: FlDotData(
          show: true,
        ),
      )
    ];
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
        text = "44";
        break;
      case 1:
        text = "45";
        break;
      case 2:
        text = "46";
        break;
      case 3:
        text = "47";
        break;
      case 4:
        text = "48";
        break;
      case 5:
        text = "49";
        break;
      case 6:
        text = "50";
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

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Average jobs Time Tracking By Tech'),
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
                    padding: EdgeInsets.only(bottom: 10, top: 10),
                    child: Center(
                        child: Text(
                      'Job Time HRS (Average)',
                      textAlign: TextAlign.center,
                      style: AppTheme.primarStyle,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Indicator(color: c1, text: 'Adam Biliot', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c2, text: 'Alex Ogle', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c3, text: 'Ben Cartlige', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c5, text: 'Brandon Murdock', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c6, text: 'Dylan Hamil', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c7, text: 'Fiber Team', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c8, text: 'Jeff Simmons', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c9, text: 'Joseph Aycock', isSquare: false, size: 18, textColor: Colors.black),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Indicator(color: c10, text: 'Joseph Thomsom', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c11, text: 'Kamrin Lilley', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c12, text: 'Larry Phillips', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c13, text: 'Team 1', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c14, text: 'Team 2', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c15, text: 'Team 3', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c16, text: 'Team 4', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c17, text: 'Terry Isreal', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c18, text: 'Tim McClaine', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c19, text: 'Towe Team', isSquare: false, size: 18, textColor: Colors.black),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
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
                              lineBarsData: [line(0, 0.7, c1), line(1, 1.1, c1)],
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
                  const Center(
                    child: Text(
                      'Average Job Time(hr) by Tech',
                      textAlign: TextAlign.center,
                      style: AppTheme.primarStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: SizedBox(
                      width: screenWidth,
                      height: 320,
                      child: const TablaAverageJobsTrackingByTech(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
