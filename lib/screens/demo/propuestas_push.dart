// ignore_for_file: camel_case_types

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

class Propuestas_Push extends StatefulWidget {
  const Propuestas_Push({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Propuestas_PushState();
}

class Propuestas_PushState extends State<Propuestas_Push> {
  int touchedIndex = -1;
  final Color aceptadas = const Color.fromARGB(255, 56, 54, 54);
  final Color rechazadas = const Color.fromARGB(255, 250, 139, 3);

  BarChartGroupData generateGroupData(int x, double acep, double recha) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
      barRods: [
        BarChartRodData(
            fromY: 0,
            toY: acep,
            color: aceptadas,
            width: 50,
            borderRadius: BorderRadius.zero),
        BarChartRodData(
            fromY: acep,
            toY: 100,
            color: rechazadas,
            width: 50,
            borderRadius: BorderRadius.zero),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Prov.2';
        break;
      case 1:
        text = 'Prov.10';
        break;
      case 2:
        text = 'Prov.16';
        break;
      case 3:
        text = 'Prov.12';
        break;
      case 4:
        text = 'Prov.15';
        break;
      case 5:
        text = 'Prov.18';
        break;
      case 6:
        text = 'Prov.21';
        break;
      case 7:
        text = 'Prov.27';
        break;
      case 8:
        text = 'Prov.23';
        break;
      case 9:
        text = 'Prov.33';
        break;
      case 10:
        text = 'Prov.11';
        break;
      case 11:
        text = 'Prov.37';
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
        '$value%',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Propuestas Push Aceptadas vs rechazadas'),
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
                color: Color.fromARGB(255, 56, 54, 54),
                text: 'Aprobadas',
                isSquare: false,
                size: 18,
                textColor: Colors.black,
              ),
              Indicator(
                  color: Color.fromARGB(255, 250, 139, 3),
                  text: 'Rechazadas',
                  isSquare: false,
                  size: 16,
                  textColor: Colors.black),
            ],
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1.66,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 80, 30, 20),
                child: BarChart(
                  BarChartData(
                      alignment: BarChartAlignment.center,
                      barTouchData: BarTouchData(
                        enabled: true,
                        touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor:
                                const Color.fromARGB(255, 204, 204, 204),
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              String ace;
                              String rec;
                              switch (group.x.toInt()) {
                                case 0:
                                  ace = '5';
                                  rec = '7';
                                  break;
                                case 1:
                                  ace = '3';
                                  rec = '7';
                                  break;
                                case 2:
                                  ace = '5';
                                  rec = '6';
                                  break;
                                case 3:
                                  ace = '3';
                                  rec = '6';
                                  break;
                                case 4:
                                  ace = '4';
                                  rec = '6';
                                  break;
                                case 5:
                                  ace = '3';
                                  rec = '6';
                                  break;
                                case 6:
                                  ace = '7';
                                  rec = '4';
                                  break;
                                case 7:
                                  ace = '2';
                                  rec = '4';
                                  break;
                                case 8:
                                  ace = '4';
                                  rec = '4';
                                  break;
                                case 9:
                                  ace = '3';
                                  rec = '5';
                                  break;
                                case 10:
                                  ace = '2';
                                  rec = '2';
                                  break;
                                case 11:
                                  ace = '8';
                                  rec = '1';
                                  break;
                                default:
                                  throw Error();
                              }
                              return BarTooltipItem(
                                '$ace\n',
                                const TextStyle(
                                  color: Color.fromARGB(255, 56, 54, 54),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: rec,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 250, 139, 3),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              );
                            }),
                        touchCallback: (FlTouchEvent event, barTouchResponse) {
                          setState(() {
                            if (!event.isInterestedForInteractions ||
                                barTouchResponse == null ||
                                barTouchResponse.spot == null) {
                              touchedIndex = -1;
                              return;
                            }
                            touchedIndex =
                                barTouchResponse.spot!.touchedBarGroupIndex;
                          });
                        },
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 100,
                              interval: 1,
                              getTitlesWidget: bottomTitles),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                              interval: 20,
                              showTitles: true,
                              reservedSize: 50,
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
                          getDrawingHorizontalLine: (value) => FlLine(
                                color: const Color(0xffe7e8ec),
                                strokeWidth: 1,
                              ),
                          drawHorizontalLine: true,
                          drawVerticalLine: false),
                      borderData: FlBorderData(
                        show: true,
                      ),
                      groupsSpace: 25,
                      barGroups: [
                        generateGroupData(0, 41.6, 58.4),
                        generateGroupData(1, 30, 70),
                        generateGroupData(2, 45.45, 54.55),
                        generateGroupData(3, 33.33, 66.67),
                        generateGroupData(4, 40, 60),
                        generateGroupData(5, 33.33, 66.67),
                        generateGroupData(6, 63.63, 36.37),
                        generateGroupData(7, 33.33, 66.67),
                        generateGroupData(8, 50, 50),
                        generateGroupData(9, 62.5, 37.5),
                        generateGroupData(10, 50, 50),
                        generateGroupData(11, 88.88, 11.12),
                      ],
                      maxY: 100
                      //barGroups: getData(),
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
              width: 20,
              toY: 5,
              rodStackItems: [
                BarChartRodStackItem(0, 5, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 7,
            rodStackItems: [
              BarChartRodStackItem(0, 7, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 20,
              toY: 3,
              rodStackItems: [
                BarChartRodStackItem(0, 3, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 7,
            rodStackItems: [
              BarChartRodStackItem(0, 7, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 20,
              toY: 5,
              rodStackItems: [
                BarChartRodStackItem(0, 5, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 6,
            rodStackItems: [
              BarChartRodStackItem(0, 6, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 20,
              toY: 3,
              rodStackItems: [
                BarChartRodStackItem(0, 3, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 3,
            rodStackItems: [
              BarChartRodStackItem(0, 7, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 20,
              toY: 4,
              rodStackItems: [
                BarChartRodStackItem(0, 4, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 6,
            rodStackItems: [
              BarChartRodStackItem(0, 6, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 5,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 20,
              toY: 3,
              rodStackItems: [
                BarChartRodStackItem(0, 3, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 6,
            rodStackItems: [
              BarChartRodStackItem(0, 6, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 6,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 20,
              toY: 7,
              rodStackItems: [
                BarChartRodStackItem(0, 7, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 4,
            rodStackItems: [
              BarChartRodStackItem(0, 4, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 7,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 20,
              toY: 2,
              rodStackItems: [
                BarChartRodStackItem(0, 2, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 4,
            rodStackItems: [
              BarChartRodStackItem(0, 4, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 8,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 20,
              toY: 4,
              rodStackItems: [
                BarChartRodStackItem(0, 4, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 4,
            rodStackItems: [
              BarChartRodStackItem(0, 4, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 9,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 20,
              toY: 5,
              rodStackItems: [
                BarChartRodStackItem(0, 5, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 3,
            rodStackItems: [
              BarChartRodStackItem(0, 3, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 10,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 20,
              toY: 2,
              rodStackItems: [
                BarChartRodStackItem(0, 2, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 2,
            rodStackItems: [
              BarChartRodStackItem(0, 2, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 11,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 20,
              toY: 8,
              rodStackItems: [
                BarChartRodStackItem(0, 8, aceptadas),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 20,
            toY: 1,
            rodStackItems: [
              BarChartRodStackItem(0, 1, rechazadas),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
    ];
  }
}
