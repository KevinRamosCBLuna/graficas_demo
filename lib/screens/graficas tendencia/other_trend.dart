import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../samples/indicator.dart';
import '../../theme/App_theme.dart';

class OtherTrend extends StatefulWidget {
  const OtherTrend({super.key});

  @override
  State<OtherTrend> createState() => _OtherTrendState();
}

class _OtherTrendState extends State<OtherTrend> {
  double ev0 = 73, ev1 = 21, ev2 = 20, ev3 = 11, ev4 = 17, ev5 = 58, week = 50;
  List<double> week2 = [12, 43, 53, 01, 43, 64];
  List<double> week3 = [34, 75, 12, 32, 34, 47];

  Color e0 = Colors.red,
      e1 = Colors.green,
      e2 = Colors.grey,
      e3 = Colors.orange,
      e4 = Colors.yellow,
      e5 = Colors.cyan;
  String en0 = 'Fiber Team\nConstrution',
      en1 = 'Jeff Simmons\nSecurity',
      en2 = 'Joseph Aycock\nMgr',
      en3 = 'Tim McClaine\nOther Project',
      en4 = 'Kamrin Lilley\nFiber Const',
      en5 = 'Team 4\nOther';
  int touchedIndex = -1;
  BarChartGroupData grafica(int x, double y, Color colores) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 0,
      barRods: [
        BarChartRodData(
            fromY: 0,
            toY: y,
            color: colores,
            width: 60,
            borderRadius: BorderRadius.zero),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 0:
        text = '50';
        break;
      case 1:
        text = '51';
        break;
      case 2:
        text = '52';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child:
          Text(text, textAlign: TextAlign.center, style: AppTheme.primarStyle),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        '$value%',
        style: AppTheme.primarStyle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        color: Colors.transparent,
        elevation: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.65,
          width: MediaQuery.of(context).size.width * 0.55,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 5,
                child: InkWell(
                  onTap: () {
                    if (Navigator.canPop(context)) Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Indicator(
                          color: e0,
                          text: 'Fiber Team',
                          isSquare: false,
                          size: 12,
                          textColor: Colors.black),
                      Indicator(
                          color: e1,
                          text: 'Jeff Simmons',
                          isSquare: false,
                          size: 12,
                          textColor: Colors.black),
                      Indicator(
                          color: e2,
                          text: 'Joseph Aycock',
                          isSquare: false,
                          size: 12,
                          textColor: Colors.black),
                      Indicator(
                          color: e3,
                          text: 'Tim McClaine',
                          isSquare: false,
                          size: 12,
                          textColor: Colors.black),
                      Indicator(
                          color: e4,
                          text: 'Kamrin Liley',
                          isSquare: false,
                          size: 12,
                          textColor: Colors.black),
                      Indicator(
                          color: e5,
                          text: 'Team 4',
                          isSquare: false,
                          size: 12,
                          textColor: Colors.black),
                    ],
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  SizedBox(
                          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(context).size.width * 0.45,
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                        barTouchData: BarTouchData(
                          enabled: true,
                          touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor:
                                const Color.fromARGB(255, 204, 204, 204),
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              String? n1;
                              if (group.x == 0) {
                                switch (rodIndex) {
                                  case 0:
                                    n1 = '$ev0%';

                                    break;
                                  case 1:
                                    n1 = '$ev1%';

                                    break;
                                  case 2:
                                    n1 = '$ev2%';

                                    break;
                                  case 3:
                                    n1 = '$ev3%';

                                    break;
                                  case 4:
                                    n1 = '$ev4%';

                                    break;
                                  case 5:
                                    n1 = '$ev5%';

                                    break;

                                  default:
                                    throw Error();
                                }
                              }

                              else if (group.x == 1) {
                                switch (rodIndex) {
                                  case 0:
                                    n1 = '${week2[0]}%';

                                    break;
                                  case 1:
                                    n1 = '${week2[1]}%';

                                    break;
                                  case 2:
                                    n1 = '${week2[2]}%';

                                    break;
                                  case 3:
                                    n1 = '${week2[3]}%';

                                    break;
                                  case 4:
                                    n1 = '${week2[4]}%';

                                    break;
                                  case 5:
                                    n1 = '${week2[5]}%';

                                    break;

                                  default:
                                    throw Error();
                                }
                              }

                               else if (group.x == 2) {
                                switch (rodIndex) {
                                  case 0:
                                    n1 = '${week3[0]}%';

                                    break;
                                  case 1:
                                    n1 = '${week3[1]}%';

                                    break;
                                  case 2:
                                    n1 = '${week3[2]}%';

                                    break;
                                  case 3:
                                    n1 = '${week3[3]}%';

                                    break;
                                  case 4:
                                    n1 = '${week3[4]}%';

                                    break;
                                  case 5:
                                    n1 = '${week3[5]}%';

                                    break;

                                  default:
                                    throw Error();
                                }
                              }

                              return BarTooltipItem(n1?? '', AppTheme.primarStyle);
                            },
                          ),
                          touchCallback:
                              (FlTouchEvent event, barTouchResponse) {
                            setState(
                              () {
                                if (!event.isInterestedForInteractions ||
                                    barTouchResponse == null ||
                                    barTouchResponse.spot == null) {
                                  touchedIndex = -1;
                                  return;
                                }
                                touchedIndex =
                                    barTouchResponse.spot!.touchedBarGroupIndex;
                              },
                            );
                          },
                        ),
                        titlesData: FlTitlesData(
                          show: true,
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                                showTitles: true,
                                reservedSize: 50,
                                interval: 1,
                                getTitlesWidget: bottomTitles),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                                showTitles: true,
                                reservedSize: 50,
                                interval: 50,
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
                          BarChartGroupData(
                            x: 0,
                            barsSpace: 1,
                            barRods: [
                              BarChartRodData(
                                  fromY: 0,
                                  toY: ev0 >= 100 ? 100 : ev0,
                                  color: e0,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: ev1 >= 100 ? 100 : ev1,
                                  color: e1,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: ev2 >= 100 ? 100 : ev2,
                                  color: e2,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: ev3 >= 100 ? 100 : ev3,
                                  color: e3,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: ev4 >= 100 ? 100 : ev4,
                                  color: e4,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: ev5 >= 100 ? 100 : ev5,
                                  color: e5,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                            ],
                          ),
                          BarChartGroupData(
                            x: 1,
                            barsSpace: 1,
                            barRods: [
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[0] >= 100 ? 100 : week2[0],
                                  color: e0,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[1] >= 100 ? 100 : week2[1],
                                  color: e1,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[2] >= 100 ? 100 : week2[2],
                                  color: e2,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[3] >= 100 ? 100 : week2[3],
                                  color: e3,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[4] >= 100 ? 100 : week2[4],
                                  color: e4,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[5] >= 100 ? 100 : week2[5],
                                  color: e5,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                            ],
                          ),
                          BarChartGroupData(
                            x: 2,
                            barsSpace: 1,
                            barRods: [
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[0] >= 100 ? 100 : week3[0],
                                  color: e0,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[1] >= 100 ? 100 : week3[1],
                                  color: e1,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[2] >= 100 ? 100 : week3[2],
                                  color: e2,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[3] >= 100 ? 100 : week3[3],
                                  color: e3,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[4] >= 100 ? 100 : week3[4],
                                  color: e4,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[5] >= 100 ? 100 : week3[5],
                                  color: e5,
                                  width: 30,
                                  borderRadius: BorderRadius.zero),
                            ],
                          ),
                        ],
                        //barGroups: getData(),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
