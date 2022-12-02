// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:graficas_demo/samples/indicator.dart';

class Pagos_FT extends StatefulWidget {
  const Pagos_FT({Key? key}) : super(key: key);

  @override
  State<Pagos_FT> createState() => _Pagos_FTState();
}

class _Pagos_FTState extends State<Pagos_FT> {
  late double touchedValue;

  @override
  void initState() {
    touchedValue = -1;
    super.initState();
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
        text = "Ene";
        break;
      case 1:
        text = "Feb";
        break;
      case 2:
        text = "Mar";
        break;
      case 3:
        text = "Abr";
        break;
      case 4:
        text = "May";
        break;
      case 5:
        text = "Jun";
        break;
      case 6:
        text = "Jul";
        break;
      case 7:
        text = "Ago";
        break;
      case 8:
        text = "Sep";
        break;
      case 9:
        text = "Oct";
        break;
      case 10:
        text = "Nov";
        break;
      case 11:
        text = "Dic";
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
          title: const Text('Pagos Fuera de Tiempo'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(children: <Widget>[
          const SizedBox(
            height: 28,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Indicator(
                color: Color.fromARGB(255, 29, 9, 106),
                text: 'Suma de Total de Partidas',
                isSquare: false,
                size: 18,
                textColor: Colors.black,
              ),
              Indicator(
                  color: Color.fromARGB(255, 2, 25, 238),
                  text: 'Fuera de Tiempo',
                  isSquare: false,
                  size: 16,
                  textColor: Colors.black),
            ],
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1.6,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 40, 30, 60),
                child: LineChart(
                  LineChartData(
                    lineTouchData: LineTouchData(
                        enabled: true,
                        touchTooltipData: LineTouchTooltipData(
                          tooltipBgColor:
                              const Color.fromARGB(255, 204, 204, 204),
                        ),
                        touchCallback: (FlTouchEvent event, lineTouch) {
                          if (!event.isInterestedForInteractions ||
                              lineTouch == null ||
                              lineTouch.lineBarSpots == null) {
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
                    lineBarsData: [
                      LineChartBarData(
                        spots: const [
                          FlSpot(0, 61),
                          FlSpot(1, 57),
                          FlSpot(2, 50),
                          FlSpot(3, 42),
                          FlSpot(4, 50),
                          FlSpot(5, 30),
                          FlSpot(6, 23),
                          FlSpot(7, 20),
                          FlSpot(8, 37),
                          FlSpot(9, 25),
                          FlSpot(10, 22),
                          FlSpot(11, 33),
                        ],
                        isCurved: false,
                        barWidth: 2,
                        color: const Color.fromARGB(255, 29, 9, 106),
                        dotData: FlDotData(
                          show: true,
                        ),
                      ),
                      LineChartBarData(
                        spots: const [
                          FlSpot(0, 31),
                          FlSpot(1, 20),
                          FlSpot(2, 21),
                          FlSpot(3, 22),
                          FlSpot(4, 28),
                          FlSpot(5, 18),
                          FlSpot(6, 10),
                          FlSpot(7, 9),
                          FlSpot(8, 17),
                          FlSpot(9, 10),
                          FlSpot(10, 5),
                          FlSpot(11, 9),
                        ],
                        isCurved: false,
                        barWidth: 2,
                        color: const Color.fromARGB(255, 2, 25, 238),
                        dotData: FlDotData(
                          show: true,
                        ),
                      ),
                    ],
                    minY: 0,
                    maxY: 70,
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
                          interval: 10,
                          reservedSize: 36,
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
                        drawHorizontalLine: true,
                        getDrawingHorizontalLine: (value) => FlLine(
                              color: const Color(0xffe7e8ec),
                              strokeWidth: 1,
                            )),
                  ),
                ),
              ),
            ),
          ),
        ])));
  }
}
