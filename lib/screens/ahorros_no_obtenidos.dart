import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:graficas_demo/samples/indicator.dart';

// ignore: camel_case_types
class Ahorros_No_Optenidos extends StatefulWidget {
  const Ahorros_No_Optenidos({Key? key}) : super(key: key);

  @override
  State<Ahorros_No_Optenidos> createState() => _Ahorros_No_OptenidosState();
}

// ignore: camel_case_types
class _Ahorros_No_OptenidosState extends State<Ahorros_No_Optenidos> {
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
        '\$ $value.00',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ahorros No Obtenidos Por Falta De Fondos'),
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
                  text: 'Ahorro Optenido',
                  isSquare: false,
                  size: 16,
                  textColor: Colors.black),
              Indicator(
                color: Colors.deepOrange,
                text: 'Fondos Faltantes',
                isSquare: false,
                size: 18,
                textColor: Colors.black,
              ),
              Indicator(
                  color: Colors.pinkAccent,
                  text: 'Ahorro no Optenido',
                  isSquare: false,
                  size: 18,
                  textColor: Colors.black),
            ],
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1.6,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 60, 30, 40),
                child: LineChart(
                  LineChartData(
                    lineTouchData: LineTouchData(
                        enabled: true,
                        handleBuiltInTouches: true,
                        touchTooltipData: LineTouchTooltipData(
                          fitInsideHorizontally: false,
                          fitInsideVertically: false,
                          tooltipBgColor:
                              const Color.fromARGB(255, 210, 210, 210),
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
                          FlSpot(0, 34000000),
                          FlSpot(1, 25000000),
                          FlSpot(2, 27000000),
                          FlSpot(3, 28000000),
                          FlSpot(4, 20000000),
                          FlSpot(5, 15000000),
                          FlSpot(6, 7000000),
                          FlSpot(7, 38000000),
                          FlSpot(8, 40000000),
                          FlSpot(9, 22000000),
                          FlSpot(10, 23000000),
                          FlSpot(11, 30000000),
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
                          FlSpot(0, 58000000),
                          FlSpot(1, 35000000),
                          FlSpot(2, 0),
                          FlSpot(3, 0),
                          FlSpot(4, 25000000),
                          FlSpot(5, 70000000),
                          FlSpot(6, 18000000),
                          FlSpot(7, 20000000),
                          FlSpot(8, 5000000),
                          FlSpot(9, 39000000),
                          FlSpot(10, 70000000),
                          FlSpot(11, 0),
                        ],
                        isCurved: false,
                        barWidth: 2,
                        color: Colors.deepOrange,
                        dotData: FlDotData(
                          show: true,
                        ),
                      ),
                      LineChartBarData(
                        spots: const [
                          FlSpot(0, 10000000),
                          FlSpot(1, 7000000),
                          FlSpot(2, 0),
                          FlSpot(3, 0),
                          FlSpot(4, 5000000),
                          FlSpot(5, 9000000),
                          FlSpot(6, 2000000),
                          FlSpot(7, 7000000),
                          FlSpot(8, 6000000),
                          FlSpot(9, 5000000),
                          FlSpot(10, 10000000),
                          FlSpot(11, 3000000),
                        ],
                        isCurved: false,
                        barWidth: 2,
                        color: Colors.pinkAccent,
                        dotData: FlDotData(
                          show: true,
                        ),
                      ),
                    ],
                    minY: 0,
                    maxY: 75000000,
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
                          interval: 10000000,
                          getTitlesWidget: leftTitleWidgets,
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
                            )),
                  ),
                ),
              ),
            ),
          ),
        ])));
  }
}
