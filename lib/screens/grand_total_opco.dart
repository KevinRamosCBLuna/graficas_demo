// ignore_for_file: avoid_print

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

class GrandTotalOpCo extends StatefulWidget {
  const GrandTotalOpCo({Key? key}) : super(key: key);

  @override
  State<GrandTotalOpCo> createState() => _GrandTotalOpCoState();
}

class _GrandTotalOpCoState extends State<GrandTotalOpCo> {
  late double touchedValue;

  @override
  void initState() {
    touchedValue = -1;
    super.initState();
  }

  LineChartBarData TotalGrandOpco() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 179),
        FlSpot(1, 139),
        FlSpot(2, 153),
        FlSpot(3, 176),
        FlSpot(4, 195),
        FlSpot(5, 97),
      ],
      isCurved: false,
      barWidth: 5,
      color: Colors.blue,
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
    return SizedBox(
      width: 850,
      height: 313,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Center(
              child: Text(
            'Grand Total OpCo (Count (All))',
            textAlign: TextAlign.center,
            style: estilo(),
          )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Indicator(color: Colors.blue, text: 'Grand Total OpCo (Count (All))', isSquare: false, size: 18, textColor: Colors.black),
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
                    lineBarsData: [TotalGrandOpco()],
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
                          interval: 50,
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
                    maxY: 200),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
