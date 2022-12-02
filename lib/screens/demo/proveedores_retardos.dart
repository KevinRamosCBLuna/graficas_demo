import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

// ignore: camel_case_types
class Proveedores_Con_Retardos extends StatelessWidget {
  const Proveedores_Con_Retardos({Key? key}) : super(key: key);

  final Color dark = const Color.fromARGB(255, 41, 132, 206);
  final Color normal = const Color.fromARGB(255, 2, 120, 135);
  final Color light = const Color.fromARGB(255, 29, 83, 200);

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
          title: const Text('Proveedores con Retardos en Envios de NC'),
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
                color: Color.fromARGB(255, 41, 132, 206),
                text: 'Prov. 31',
                isSquare: false,
                size: 18,
                textColor: Colors.black,
              ),
              Indicator(
                  color: Color.fromARGB(255, 2, 120, 135),
                  text: 'Prov. 4',
                  isSquare: false,
                  size: 16,
                  textColor: Colors.black),
              Indicator(
                  color: Color.fromARGB(255, 29, 83, 200),
                  text: 'Prov. 22',
                  isSquare: false,
                  size: 18,
                  textColor: Colors.black),
            ],
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1.66,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 60, 30, 40),
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.start,
                    barTouchData: BarTouchData(
                        handleBuiltInTouches: true,
                        enabled: true,
                        touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor:
                                const Color.fromARGB(255, 204, 204, 204))),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                        showTitles: false,
                        reservedSize: 40,
                      )),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            interval: 1,
                            getTitlesWidget: leftTitleWidgets),
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
                      drawHorizontalLine: true,
                      getDrawingHorizontalLine: (value) => FlLine(
                        color: const Color(0xffe7e8ec),
                        strokeWidth: 1,
                      ),
                      drawVerticalLine: false,
                    ),
                    borderData: FlBorderData(
                      show: true,
                    ),
                    groupsSpace: 25,
                    maxY: 9,
                    barGroups: getData(),
                  ),
                ),
              ),
            ),
          ),
        ])));
  }

  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 9,
              color: dark,
              rodStackItems: [
                BarChartRodStackItem(0, 9, dark),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 8,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 8, light),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 8,
              color: normal,
              rodStackItems: [
                BarChartRodStackItem(0, 8, normal),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 7,
              color: dark,
              rodStackItems: [
                BarChartRodStackItem(0, 7, dark),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 7,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 7, light),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 6,
              color: normal,
              rodStackItems: [
                BarChartRodStackItem(0, 6, normal),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 5,
              color: dark,
              rodStackItems: [
                BarChartRodStackItem(0, 5, dark),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 7,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 5,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 5, light),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 8,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 4,
              color: normal,
              rodStackItems: [
                BarChartRodStackItem(0, 4, normal),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 9,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 4,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 4, light),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 10,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 3,
              color: normal,
              rodStackItems: [
                BarChartRodStackItem(0, 3, normal),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 11,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 3,
              color: dark,
              rodStackItems: [
                BarChartRodStackItem(0, 3, dark),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 12,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 2,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 2, light),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 13,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 2,
              color: normal,
              rodStackItems: [
                BarChartRodStackItem(0, 2, normal),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 14,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 1,
              color: dark,
              rodStackItems: [
                BarChartRodStackItem(0, 1, dark),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 15,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 1,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 1, light),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }
}
