import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

// ignore: camel_case_types
class Respuestas_Push extends StatefulWidget {
  const Respuestas_Push({Key? key}) : super(key: key);

  @override
  State<Respuestas_Push> createState() => _Respuestas_PushState();
}

// ignore: camel_case_types
class _Respuestas_PushState extends State<Respuestas_Push> {
  int touchedIndex = -1;
  BarChartGroupData generateGroupData(int x, double acep, double recha) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
      barRods: [
        BarChartRodData(
            fromY: 0,
            toY: acep,
            color: Colors.blue,
            width: 50,
            borderRadius: BorderRadius.zero),
        BarChartRodData(
            fromY: acep,
            toY: 100,
            color: Colors.pinkAccent,
            width: 50,
            borderRadius: BorderRadius.zero)
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Prov.23';
        break;
      case 1:
        text = 'Prov.13';
        break;
      case 2:
        text = 'Prov.15';
        break;
      case 3:
        text = 'Prov.21';
        break;
      case 4:
        text = 'Prov.1';
        break;
      case 5:
        text = 'Prov.19';
        break;
      case 6:
        text = 'Prov.18';
        break;
      case 7:
        text = 'Prov.11';
        break;
      case 8:
        text = 'Prov.2';
        break;
      case 9:
        text = 'Prov.16';
        break;
      case 10:
        text = 'Prov.22';
        break;
      case 11:
        text = 'Prov.17';
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
          title: const Text('% de Respuesta Push'),
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
                color: Colors.blue,
                text: 'Suma de % Respuesta',
                isSquare: false,
                size: 18,
                textColor: Colors.black,
              ),
              Indicator(
                  color: Colors.pinkAccent,
                  text: 'Suma de % Sin Respuesta',
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
                                ace = '3';
                                rec = '97';
                                break;
                              case 1:
                                ace = '11';
                                rec = '89';
                                break;
                              case 2:
                                ace = '17';
                                rec = '83';
                                break;
                              case 3:
                                ace = '19';
                                rec = '81';
                                break;
                              case 4:
                                ace = '23';
                                rec = '77';
                                break;
                              case 5:
                                ace = '28';
                                rec = '72';
                                break;
                              case 6:
                                ace = '41';
                                rec = '59';
                                break;
                              case 7:
                                ace = '45';
                                rec = '55';
                                break;
                              case 8:
                                ace = '51';
                                rec = '49';
                                break;
                              case 9:
                                ace = '55';
                                rec = '45';
                                break;
                              case 10:
                                ace = '69';
                                rec = '31';
                                break;
                              case 11:
                                ace = '76';
                                rec = '24';
                                break;
                              default:
                                throw Error();
                            }
                            return BarTooltipItem(
                              '$ace %\n',
                              const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '$rec %',
                                  style: const TextStyle(
                                    color: Colors.pinkAccent,
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
                            showTitles: true,
                            reservedSize: 50,
                            interval: 20,
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
                    maxY: 100,
                    groupsSpace: 25,
                    barGroups: [
                      generateGroupData(0, 3, 97),
                      generateGroupData(1, 11, 89),
                      generateGroupData(2, 17, 83),
                      generateGroupData(3, 19, 81),
                      generateGroupData(4, 23, 77),
                      generateGroupData(5, 28, 72),
                      generateGroupData(6, 41, 59),
                      generateGroupData(7, 45, 55),
                      generateGroupData(8, 51, 49),
                      generateGroupData(9, 55, 45),
                      generateGroupData(10, 69, 31),
                      generateGroupData(11, 76, 24),
                    ],
                    //barGroups: getData(),
                  ),
                ),
              ),
            ),
          ),
        ])));
  }
}
