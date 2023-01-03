import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../samples/indicator.dart';
import '../../theme/App_theme.dart';

class AverageJobsMinutesTrend extends StatefulWidget {
  const AverageJobsMinutesTrend({super.key});

  @override
  State<AverageJobsMinutesTrend> createState() => _AverageJobsMinutesTrendState();
}

class _AverageJobsMinutesTrendState extends State<AverageJobsMinutesTrend> {
  List<double> week1 = [
    11,
    34,
    21,
    10,
    32,
    54,
    34,
    56,
    47,
    76,
    34,
    56,
    47,
    76,
    12,
    43
  ];
  List<double> week2 = [
    12,
    43,
    53,
    01,
    43,
    64,
    12,
    43,
    23,
    43,
    12,
    43,
    23,
    43,
    12,
    43
  ];
  List<double> week3 = [
    34,
    75,
    12,
    32,
    34,
    47,
    98,
    10,
    11,
    12,
    34,
    75,
    12,
    32,
    34,
    47
  ];
  double week = 50;

  Color e0 = Colors.red,
      e1 = Colors.green,
      e2 = Colors.grey,
      e3 = Colors.orange,
      e4 = Colors.yellow,
      e5 = Colors.cyan,
      e6 = Color.fromARGB(255, 175, 114, 76),
      e7 = Color.fromARGB(255, 228, 29, 205),
      e8 = Color.fromARGB(255, 140, 225, 129),
      e9 = Color.fromARGB(255, 250, 112, 112),
      e10 = Color.fromARGB(255, 220, 168, 11),
      e11 = const Color.fromARGB(255, 240, 129, 121),
      e12 = const Color.fromARGB(255, 157, 247, 160),
      e13 = const Color.fromARGB(255, 83, 83, 83),
      e14 = const Color.fromARGB(255, 238, 160, 43),
      e15 = const Color.fromARGB(255, 31, 77, 247),
      e16 = Color.fromARGB(255, 247, 31, 247);

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
          height: MediaQuery.of(context).size.height * 0.80,
          width: MediaQuery.of(context).size.width * 0.90,
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
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Indicator(
                              color: e0,
                              text: 'Adam Biliot',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e1,
                              text: 'Alex Ogle',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e2,
                              text: 'Ben Cartidge',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e3,
                              text: 'Brandon Murdock',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e4,
                              text: 'Dylan Hamil',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e5,
                              text: 'Joseph Thomson',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e6,
                              text: 'Larry Phillips',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e7,
                              text: 'Team 1',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                         
                        ],
                      ),
                      SizedBox(height: 20,),
                       Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                        
                          Indicator(
                              color: e8,
                              text: 'Team 2',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e9,
                              text: 'Terry Isreal',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e10,
                              text: 'Fiber Team - Construction',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e11,
                              text: 'Jeff Simmons - Security',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e12,
                              text: 'Joseph Aycock - Mgr',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e13,
                              text: 'Tim McClaine - other project',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e14,
                              text: 'Kamrin Lilley - fiber const',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                          Indicator(
                              color: e15,
                              text: 'Team 4 - other',
                              isSquare: false,
                             size: 8,
                              textColor: Colors.black),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: MediaQuery.of(context).size.width * 0.65,
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
                                    n1 = '${week1[0]}%';

                                    break;
                                  case 1:
                                    n1 = '${week1[1]}%';

                                    break;
                                  case 2:
                                    n1 = '${week1[2]}%';

                                    break;
                                  case 3:
                                    n1 = '${week1[3]}%';

                                    break;
                                  case 4:
                                    n1 = '${week1[4]}%';

                                    break;
                                  case 5:
                                    n1 = '${week1[5]}%';

                                    break;

                                  case 6:
                                    n1 = '${week1[6]}%';

                                    break;

                                  case 7:
                                    n1 = '${week1[7]}%';

                                    break;

                                  case 8:
                                    n1 = '${week1[8]}%';

                                    break;

                                  case 9:
                                    n1 = '${week1[9]}%';

                                    break;

                                  case 10:
                                    n1 = '${week1[10]}%';

                                    break;
                                  case 11:
                                    n1 = '${week1[11]}%';

                                    break;
                                  case 12:
                                    n1 = '${week1[12]}%';

                                    break;
                                  case 13:
                                    n1 = '${week1[13]}%';

                                    break;
                                  case 14:
                                    n1 = '${week1[14]}%';

                                    break;
                                  case 15:
                                    n1 = '${week1[15]}%';

                                    break;

                                  default:
                                    throw Error();
                                }
                              } else if (group.x == 1) {
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
                                  case 6:
                                    n1 = '${week2[6]}%';

                                    break;

                                  case 7:
                                    n1 = '${week2[7]}%';

                                    break;

                                  case 8:
                                    n1 = '${week2[8]}%';

                                    break;

                                  case 9:
                                    n1 = '${week2[9]}%';

                                    break;
                                  case 10:
                                    n1 = '${week2[10]}%';

                                    break;
                                  case 11:
                                    n1 = '${week2[11]}%';

                                    break;
                                  case 12:
                                    n1 = '${week2[12]}%';

                                    break;
                                  case 13:
                                    n1 = '${week2[13]}%';

                                    break;
                                  case 14:
                                    n1 = '${week2[14]}%';

                                    break;
                                  case 15:
                                    n1 = '${week2[15]}%';

                                    break;
                                  default:
                                    throw Error();
                                }
                              } else if (group.x == 2) {
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
                                  case 6:
                                    n1 = '${week3[6]}%';

                                    break;

                                  case 7:
                                    n1 = '${week3[7]}%';

                                    break;

                                  case 8:
                                    n1 = '${week3[8]}%';

                                    break;

                                  case 9:
                                    n1 = '${week3[9]}%';

                                    break;
                                  case 10:
                                    n1 = '${week3[0]}%';

                                    break;
                                  case 11:
                                    n1 = '${week3[1]}%';

                                    break;
                                  case 12:
                                    n1 = '${week3[2]}%';

                                    break;
                                  case 13:
                                    n1 = '${week3[3]}%';

                                    break;
                                  case 14:
                                    n1 = '${week3[4]}%';

                                    break;
                                  case 15:
                                    n1 = '${week3[5]}%';

                                    break;
                                  default:
                                    throw Error();
                                }
                              }

                              return BarTooltipItem(
                                  n1 ?? '', AppTheme.primarStyle);
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
                                  toY: week1[0] >= 100 ? 100 : week1[0],
                                  color: e0,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[1] >= 100 ? 100 : week1[1],
                                  color: e1,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[2] >= 100 ? 100 : week1[2],
                                  color: e2,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[3] >= 100 ? 100 : week1[3],
                                  color: e3,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[4] >= 100 ? 100 : week1[4],
                                  color: e4,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[5] >= 100 ? 100 : week1[5],
                                  color: e5,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[6] >= 100 ? 100 : week1[6],
                                  color: e6,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[7] >= 100 ? 100 : week1[7],
                                  color: e7,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[8] >= 100 ? 100 : week1[8],
                                  color: e8,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[9] >= 100 ? 100 : week1[9],
                                  color: e9,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                                    BarChartRodData(
                                  fromY: 0,
                                  toY: week1[10] >= 100 ? 100 : week1[10],
                                  color: e10,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[11] >= 100 ? 100 : week1[11],
                                  color: e11,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[12] >= 100 ? 100 : week1[12],
                                  color: e12,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[13] >= 100 ? 100 : week1[13],
                                  color: e13,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[14] >= 100 ? 100 : week1[14],
                                  color: e14,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week1[15] >= 100 ? 100 : week1[15],
                                  color: e15,
                                  width: 20,
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
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[1] >= 100 ? 100 : week2[1],
                                  color: e1,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[2] >= 100 ? 100 : week2[2],
                                  color: e2,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[3] >= 100 ? 100 : week2[3],
                                  color: e3,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[4] >= 100 ? 100 : week2[4],
                                  color: e4,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[5] >= 100 ? 100 : week2[5],
                                  color: e5,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[6] >= 100 ? 100 : week2[6],
                                  color: e6,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[7] >= 100 ? 100 : week2[7],
                                  color: e7,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[8] >= 100 ? 100 : week2[8],
                                  color: e8,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[9] >= 100 ? 100 : week2[9],
                                  color: e9,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                                      BarChartRodData(
                                  fromY: 0,
                                  toY: week2[10] >= 100 ? 100 : week2[10],
                                  color: e10,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[11] >= 100 ? 100 : week2[11],
                                  color: e11,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[12] >= 100 ? 100 : week2[12],
                                  color: e12,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[13] >= 100 ? 100 : week2[13],
                                  color: e13,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[14] >= 100 ? 100 : week2[14],
                                  color: e14,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week2[15] >= 100 ? 100 : week2[15],
                                  color: e15,
                                  width: 20,
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
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[1] >= 100 ? 100 : week3[1],
                                  color: e1,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[2] >= 100 ? 100 : week3[2],
                                  color: e2,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[3] >= 100 ? 100 : week3[3],
                                  color: e3,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[4] >= 100 ? 100 : week3[4],
                                  color: e4,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[5] >= 100 ? 100 : week3[5],
                                  color: e5,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[6] >= 100 ? 100 : week3[6],
                                  color: e6,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[7] >= 100 ? 100 : week3[7],
                                  color: e7,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[8] >= 100 ? 100 : week3[8],
                                  color: e8,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[9] >= 100 ? 100 : week3[9],
                                  color: e9,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                                    BarChartRodData(
                                  fromY: 0,
                                  toY: week3[10] >= 100 ? 100 : week3[10],
                                  color: e10,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[11] >= 100 ? 100 : week3[11],
                                  color: e11,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[12] >= 100 ? 100 : week3[12],
                                  color: e12,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[13] >= 100 ? 100 : week3[13],
                                  color: e13,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[14] >= 100 ? 100 : week3[14],
                                  color: e14,
                                  width: 20,
                                  borderRadius: BorderRadius.zero),
                              BarChartRodData(
                                  fromY: 0,
                                  toY: week3[15] >= 100 ? 100 : week3[15],
                                  color: e15,
                                  width: 20,
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
