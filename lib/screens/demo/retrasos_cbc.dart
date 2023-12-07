import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

// ignore: camel_case_types
class Retrasos_CBC extends StatefulWidget {
  const Retrasos_CBC({Key? key}) : super(key: key);

  @override
  State<Retrasos_CBC> createState() => _Retrasos_CBCState();
}

// ignore: camel_case_types
class _Retrasos_CBCState extends State<Retrasos_CBC> {
  late double touchedValue;
  @override
  void initState() {
    touchedValue = -1;
    super.initState();
  }

  Widget bottonTitleWidgets(double value, TitleMeta meta) {
    final isTouched = value == touchedValue;
    final style = TextStyle(
      fontSize: 15,
      fontWeight: isTouched ? FontWeight.bold : FontWeight.normal,
      color: isTouched ? Colors.blue : Colors.black,
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
          title: const Text('Retrasos CBC de NC en SAP'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: <Widget>[
            const SizedBox(
              height: 28,
            ),
           const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  <Widget>[
                Indicator(
                  color: Colors.pinkAccent,
                  text: 'Tiempo Limite de carga NC',
                  isSquare: false,
                  size: 18,
                  textColor: Colors.black,
                ),
                Indicator(
                    color: Colors.purple,
                    text: 'Día de registro',
                    isSquare: false,
                    size: 16,
                    textColor: Colors.black),
              ],
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1.66,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 60, 30, 40),
                  child: LineChart(
                    LineChartData(
                      extraLinesData: ExtraLinesData(horizontalLines: [
                        HorizontalLine(
                          y: 3,
                          color: Colors.pinkAccent,
                          strokeWidth: 3,
                          dashArray: [20, 2],
                        ),
                      ]),
                      lineTouchData: LineTouchData(
                          enabled: true,
                          handleBuiltInTouches: true,
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
                            FlSpot(0, 5),
                            FlSpot(1, 1),
                            FlSpot(2, 7),
                            FlSpot(3, 4),
                            FlSpot(4, 5),
                            FlSpot(5, 5),
                            FlSpot(6, 0),
                            FlSpot(7, 1),
                            FlSpot(8, 0),
                            FlSpot(9, 2),
                            FlSpot(10, 2),
                            FlSpot(11, 3),
                            FlSpot(12, 2),
                            FlSpot(13, 2),
                            FlSpot(14, 7),
                            FlSpot(15, 0),
                            FlSpot(16, 1),
                            FlSpot(17, 6),
                            FlSpot(18, 0),
                            FlSpot(19, 1),
                            FlSpot(20, 2),
                            FlSpot(21, 5),
                            FlSpot(22, 4),
                            FlSpot(23, 4),
                            FlSpot(24, 3),
                            FlSpot(25, 2),
                            FlSpot(26, 6),
                            FlSpot(27, 3),
                            FlSpot(28, 1),
                            FlSpot(29, 2),
                            FlSpot(30, 4),
                            FlSpot(31, 5),
                            FlSpot(32, 4),
                            FlSpot(33, 7),
                            FlSpot(34, 3),
                            FlSpot(35, 6),
                            FlSpot(36, 4),
                            FlSpot(37, 5),
                            FlSpot(38, 1),
                            FlSpot(39, 0),
                            FlSpot(40, 4),
                            FlSpot(41, 1),
                            FlSpot(42, 7),
                            FlSpot(43, 0),
                          ],
                          isCurved: false,
                          barWidth: 2,
                          color: Colors.purple,
                          dotData: FlDotData(
                            show: true,
                          ),
                        ),
                      ],
                      minY: 0,
                      maxY: 7,
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          axisNameWidget: const Text('NOTAS DE CREDITO'),
                          sideTitles: SideTitles(
                              showTitles: true,
                              interval: 1,
                              getTitlesWidget: bottonTitleWidgets),
                        ),
                        leftTitles: AxisTitles(
                          axisNameWidget: const Text(
                            'TIEMPO PARA EL REGISTRO DE NOTAS DE CREDITO',
                            textDirection: TextDirection.ltr,
                          ),
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            reservedSize: 40,
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
                    ),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
