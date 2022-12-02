import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

// ignore: camel_case_types
class Ahorro_por_Proveedores extends StatefulWidget {
  const Ahorro_por_Proveedores({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BarChartSample4State();
}

class BarChartSample4State extends State<Ahorro_por_Proveedores> {
  final Color dark = const Color.fromARGB(255, 41, 132, 206);
  final Color normal = const Color.fromARGB(255, 2, 120, 135);
  final Color light = const Color.fromARGB(255, 29, 83, 200);

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 10);
    String text = ('Total');
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
        '\$ $value.00',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ahorro por Proveedores'),
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
                padding: const EdgeInsets.fromLTRB(30, 60, 30, 20),
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
                          axisNameWidget: const Text(
                            'Total',
                            style: TextStyle(fontSize: 20),
                          ),
                          axisNameSize: 30,
                          sideTitles: SideTitles(
                            showTitles: false,
                            reservedSize: 40,
                            interval: 1,
                            //getTitlesWidget: bottomTitles),
                          )),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 100,
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
                      checkToShowHorizontalLine: (value) => value % 10 == 0,
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
              toY: 800000,
              color: dark,
              rodStackItems: [
                BarChartRodStackItem(0, 800000, dark),
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
              toY: 655000,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 655000, light),
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
              toY: 625000,
              color: normal,
              rodStackItems: [
                BarChartRodStackItem(0, 625000, normal),
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
              toY: 550000,
              color: dark,
              rodStackItems: [
                BarChartRodStackItem(0, 550000, dark),
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
              toY: 450000,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 450000, light),
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
              toY: 350000,
              color: normal,
              rodStackItems: [
                BarChartRodStackItem(0, 350000, normal),
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
              toY: 300000,
              color: dark,
              rodStackItems: [
                BarChartRodStackItem(0, 300000, dark),
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
              toY: 290000,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 290000, light),
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
              toY: 250000,
              color: normal,
              rodStackItems: [
                BarChartRodStackItem(0, 250000, normal),
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
              toY: 220000,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 220000, light),
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
              toY: 200000,
              color: normal,
              rodStackItems: [
                BarChartRodStackItem(0, 200000, normal),
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
              toY: 180000,
              color: dark,
              rodStackItems: [
                BarChartRodStackItem(0, 180000, dark),
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
              toY: 160000,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 160000, light),
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
              toY: 140000,
              color: normal,
              rodStackItems: [
                BarChartRodStackItem(0, 140000, normal),
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
              toY: 120000,
              color: dark,
              rodStackItems: [
                BarChartRodStackItem(0, 120000, dark),
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
              toY: 100000,
              color: light,
              rodStackItems: [
                BarChartRodStackItem(0, 100000, light),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 16,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 80000,
              color: normal,
              rodStackItems: [
                BarChartRodStackItem(0, 250000, normal),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      )
    ];
  }
}
