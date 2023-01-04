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
      c18 = const Color.fromARGB(255, 175, 114, 76);
  List<double> l1 = [0.7, 1.1, 0.7, 0.5, 0.3, 2.2, 0.5],
      l2 = [0.4, 0.9, 1.1, 1.3, 0.6, 1.3, 0.5],
      l3 = [0.9, 0, 0.7, 1.3, 2.0, 1.8, 1.7],
      l4 = [2.7, 1.3, 1.3, 2.3, 1.1, 1.1, 0.8],
      l5 = [0.6, 0.7, 0.8, 0.5, 0.3, 0.9, 0.6],
      l6 = [5.6, 6.9, 6.4, 2.1, 17.5, 5.8, 3.4],
      l7 = [0.0, 0.0, 0.0, 0.6, 0.0, 0.0, 0.0],
      l8 = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
      l9 = [1.1, 1.9, 0.9, 9.9, 1.1, 1.3, 1.1],
      l10 = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
      l11 = [1.4, 0.7, 1.6, 2.2, 2.1, 2.2, 1.8],
      l12 = [1.1, 1.2, 1.2, 1.8, 0.6, 1.7, 1.6],
      l13 = [1.3, 1.8, 1.5, 7.0, 1.2, 0.9, 1.8],
      l14 = [0.7, 0.9, 0.4, 1.0, 1.0, 0.5, 0.0],
      l15 = [2.9, 1.4, 2.0, 2.5, 1.6, 1.2, 2.3],
      l16 = [0.0, 0.0, 0.9, 0.9, 0.6, 1.0, 1.6],
      l17 = [5.7, 1.2, 2.3, 2.5, 1.3, 8.5, 3.2],
      l18 = [0.0, 0.1, 0.0, 0.1, 0.0, 0.0, 0.0];
  @override
  void initState() {
    touchedValue = -1;
    super.initState();
  }

  List<LineChartBarData> getData() {
    return [
      LineChartBarData(
        spots: [
          FlSpot(0, l1[0]),
          FlSpot(1, l1[1]),
          FlSpot(2, l1[2]),
          FlSpot(3, l1[3]),
          FlSpot(4, l1[4]),
          FlSpot(5, l1[5]),
          FlSpot(6, l1[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c1,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l2[0]),
          FlSpot(1, l2[1]),
          FlSpot(2, l2[2]),
          FlSpot(3, l2[3]),
          FlSpot(4, l2[4]),
          FlSpot(5, l2[5]),
          FlSpot(6, l2[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c2,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l3[0]),
          FlSpot(1, l3[1]),
          FlSpot(2, l3[2]),
          FlSpot(3, l3[3]),
          FlSpot(4, l3[4]),
          FlSpot(5, l3[5]),
          FlSpot(6, l3[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c3,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l4[0]),
          FlSpot(1, l4[1]),
          FlSpot(2, l4[2]),
          FlSpot(3, l4[3]),
          FlSpot(4, l4[4]),
          FlSpot(5, l4[5]),
          FlSpot(6, l4[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c4,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l5[0]),
          FlSpot(1, l5[1]),
          FlSpot(2, l5[2]),
          FlSpot(3, l5[3]),
          FlSpot(4, l5[4]),
          FlSpot(5, l5[5]),
          FlSpot(6, l5[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c5,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l6[0]),
          FlSpot(1, l6[1]),
          FlSpot(2, l6[2]),
          FlSpot(3, l6[3]),
          FlSpot(4, l6[4]),
          FlSpot(5, l6[5]),
          FlSpot(6, l6[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c6,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l7[0]),
          FlSpot(1, l7[1]),
          FlSpot(2, l7[2]),
          FlSpot(3, l7[3]),
          FlSpot(4, l7[4]),
          FlSpot(5, l7[5]),
          FlSpot(6, l7[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c7,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l8[0]),
          FlSpot(1, l8[1]),
          FlSpot(2, l8[2]),
          FlSpot(3, l8[3]),
          FlSpot(4, l8[4]),
          FlSpot(5, l8[5]),
          FlSpot(6, l8[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c8,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l9[0]),
          FlSpot(1, l9[1]),
          FlSpot(2, l9[2]),
          FlSpot(3, l9[3]),
          FlSpot(4, l9[4]),
          FlSpot(5, l9[5]),
          FlSpot(6, l9[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c9,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l10[0]),
          FlSpot(1, l10[1]),
          FlSpot(2, l10[2]),
          FlSpot(3, l10[3]),
          FlSpot(4, l10[4]),
          FlSpot(5, l10[5]),
          FlSpot(6, l10[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c10,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l11[0]),
          FlSpot(1, l11[1]),
          FlSpot(2, l11[2]),
          FlSpot(3, l11[3]),
          FlSpot(4, l11[4]),
          FlSpot(5, l11[5]),
          FlSpot(6, l11[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c11,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l12[0]),
          FlSpot(1, l12[1]),
          FlSpot(2, l12[2]),
          FlSpot(3, l12[3]),
          FlSpot(4, l12[4]),
          FlSpot(5, l12[5]),
          FlSpot(6, l12[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c12,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l13[0]),
          FlSpot(1, l13[1]),
          FlSpot(2, l13[2]),
          FlSpot(3, l13[3]),
          FlSpot(4, l13[4]),
          FlSpot(5, l13[5]),
          FlSpot(6, l13[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c13,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l14[0]),
          FlSpot(1, l14[1]),
          FlSpot(2, l14[2]),
          FlSpot(3, l14[3]),
          FlSpot(4, l14[4]),
          FlSpot(5, l14[5]),
          FlSpot(6, l14[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c14,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l15[0]),
          FlSpot(1, l15[1]),
          FlSpot(2, l15[2]),
          FlSpot(3, l15[3]),
          FlSpot(4, l15[4]),
          FlSpot(5, l15[5]),
          FlSpot(6, l15[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c15,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l16[0]),
          FlSpot(1, l16[1]),
          FlSpot(2, l16[2]),
          FlSpot(3, l16[3]),
          FlSpot(4, l16[4]),
          FlSpot(5, l16[5]),
          FlSpot(6, l16[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c16,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l17[0]),
          FlSpot(1, l17[1]),
          FlSpot(2, l17[2]),
          FlSpot(3, l17[3]),
          FlSpot(4, l17[4]),
          FlSpot(5, l17[5]),
          FlSpot(6, l17[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c17,
        dotData: FlDotData(
          show: true,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, l18[0]),
          FlSpot(1, l18[1]),
          FlSpot(2, l18[2]),
          FlSpot(3, l18[3]),
          FlSpot(4, l18[4]),
          FlSpot(5, l18[5]),
          FlSpot(6, l18[6]),
        ],
        isCurved: false,
        barWidth: 5,
        color: c18,
        dotData: FlDotData(
          show: true,
        ),
      ),
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
                        Indicator(color: c4, text: 'Brandon Murdock', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c5, text: 'Dylan Hamil', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c6, text: 'Fiber Team', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c7, text: 'Jeff Simmons', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c8, text: 'Joseph Aycock', isSquare: false, size: 18, textColor: Colors.black),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Indicator(color: c9, text: 'Joseph Thomsom', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c10, text: 'Kamrin Lilley', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c11, text: 'Larry Phillips', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c12, text: 'Team 1', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c13, text: 'Team 2', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c14, text: 'Team 3', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c15, text: 'Team 4', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c16, text: 'Terry Isreal', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c17, text: 'Tim McClaine', isSquare: false, size: 18, textColor: Colors.black),
                        Indicator(color: c18, text: 'Towe Team', isSquare: false, size: 18, textColor: Colors.black),
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
                              lineBarsData: getData(),
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
                                    interval: 4.5,
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
                              maxY: 18),
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
