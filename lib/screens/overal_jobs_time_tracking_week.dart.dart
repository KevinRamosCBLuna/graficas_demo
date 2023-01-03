import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/graficas%20tendencia/other_trend.dart';
import 'package:graficas_demo/screens/screens.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:provider/provider.dart';

import '../providers/week_provider.dart';

class OverallJobsTimeTrackingWeek extends StatefulWidget {
  const OverallJobsTimeTrackingWeek({Key? key}) : super(key: key);

  @override
  State<OverallJobsTimeTrackingWeek> createState() => _OverallJobsTimeTrackingWeekState();
}

class _OverallJobsTimeTrackingWeekState extends State<OverallJobsTimeTrackingWeek> {
 double  week = 50;
  List<double> week1 = [32, 12];
  List<double> week2 = [12, 43];
  List<double> week3 = [34, 75];

  Color e0 = Colors.red,
      e1 = Colors.green;
     
  String en0 = 'Week 50\n16 techs',
      en1 = 'Week 51\n13 techs',
      en2 = 'Week 52\n14 techs';
   
  int touchedIndex = -1;
  BarChartGroupData grafica(int x, double y, Color colores) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
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
        text = en0;
        break;
      case 1:
        text = en1;
        break;
      case 2:
        text = en2;
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
    SendWeek weekProvider = Provider.of<SendWeek>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overall Jobs Time Tracking Week'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Stack(
                children: [
                  
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
                              text: 'Average JobTime Hrs',
                              isSquare: false,
                              size: 12,
                              textColor: Colors.black),
                          Indicator(
                              color: e1,
                              text: 'Average DriveTime Hrs',
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
                                        n1 = '${week1[0]}%';

                                        break;
                                      case 1:
                                        n1 = '${week1[1]}%';

                                        break;
                                      case 2:
                                        n1 = '${week1[2]}%';

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
          ],
        ),
      ),
    );
  }
}
