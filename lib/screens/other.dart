import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/theme/app_theme.dart';

class Other extends StatefulWidget {
  const Other({Key? key}) : super(key: key);

  @override
  State<Other> createState() => _OtherState();
}

class _OtherState extends State<Other> {
  double ev0 = 73, ev1 = 21, ev2 = 20, ev3 = 11, ev4 = 17, ev5 = 58, week = 50;
  Color e0 = Colors.red, e1 = Colors.green, e2 = Colors.grey, e3 = Colors.orange, e4 = Colors.yellow, e5 = Colors.cyan;
  String en0 = 'Fiber Team\nConstrution', en1 = 'Jeff Simmons\nSecurity', en2 = 'Joseph Aycock\nMgr', en3 = 'Tim McClaine\nOther Project', en4 = 'Kamrin Lilley\nFiber Const', en5 = 'Team 4\nOther';
  int touchedIndex = -1;
  BarChartGroupData grafica(int x, double y, Color colores) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
      barRods: [
        BarChartRodData(fromY: 0, toY: y, color: colores, width: 60, borderRadius: BorderRadius.zero),
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
      case 3:
        text = en3;
        break;
      case 4:
        text = en4;
        break;
      case 5:
        text = en5;
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, textAlign: TextAlign.center, style: AppTheme.primarStyle),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(
                              () {
                                ev0 = 73;
                                ev1 = 21;
                                ev2 = 20;
                                ev3 = 11;
                                ev4 = 17;
                                ev5 = 58;
                                en0 = 'Fiber Team\nConstrution';
                                en1 = 'Jeff Simmons\nSecurity';
                                en2 = 'Joseph Aycock\nMgr';
                                en3 = 'Tim McClaine\nOther Project';
                                en4 = 'Kamrin Lilley\nFiber Const';
                                en5 = 'Team 4\nOther';
                                week = 50;
                              },
                            );
                          },
                          icon: const Icon(Icons.bar_chart),
                          label: const Text(
                            'Week 50',
                            style: AppTheme.secundaryStyle,
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(
                              () {
                                ev0 = 86;
                                ev1 = 9;
                                ev2 = 52.8;
                                ev3 = 2;
                                ev4 = 26;
                                ev5 = 16.17;
                                en0 = 'Fiber Team';
                                en1 = 'Kamrin Lilley';
                                en2 = 'Larry Philips';
                                en3 = 'Team 3';
                                en4 = 'Tower Team';
                                en5 = 'Joseph Thomsom';
                                week = 51;
                              },
                            );
                          },
                          icon: const Icon(Icons.bar_chart),
                          label: const Text(
                            'Week 51',
                            style: AppTheme.secundaryStyle,
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () => {
                            setState(
                              () {
                                ev0 = 29;
                                ev1 = 0;
                                ev2 = 3;
                                ev3 = 6;
                                ev4 = 10;
                                ev5 = 30;
                                week = 52;
                                en0 = 'Fiber Team';
                                en1 = 'Kamrin Lilley';
                                en2 = 'Larry Philips';
                                en3 = 'Team 3';
                                en4 = 'Tower Team';
                                en5 = 'Joseph Thomsom';
                              },
                            ),
                          },
                          icon: const Icon(Icons.bar_chart),
                          label: const Text(
                            'Week 52',
                            style: AppTheme.secundaryStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Other Week $week',
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  /* Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Indicator(color: e0, text: 'Fiber Team\nConstrution', isSquare: false, size: 16, textColor: Colors.black),
                      Indicator(color: e1, text: 'Jeff Simmons\nSecurity', isSquare: false, size: 16, textColor: Colors.black),
                      Indicator(color: e2, text: 'Joseph Aycock\nMgr', isSquare: false, size: 16, textColor: Colors.black),
                      Indicator(color: e3, text: 'Tim McClaine\nOther Project', isSquare: false, size: 16, textColor: Colors.black),
                      Indicator(color: e4, text: 'Kamrin Lilley\nFiber Const', isSquare: false, size: 16, textColor: Colors.black),
                      Indicator(color: e5, text: 'Team 4\nOther', isSquare: false, size: 16, textColor: Colors.black),
                    ],
                  ),*/
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: 800,
                      height: 350,
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.spaceAround,
                          barTouchData: BarTouchData(
                            enabled: true,
                            touchTooltipData: BarTouchTooltipData(
                              tooltipBgColor: const Color.fromARGB(255, 204, 204, 204),
                              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                                String n1;
                                switch (group.x.toInt()) {
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
                                return BarTooltipItem(n1, AppTheme.primarStyle);
                              },
                            ),
                            touchCallback: (FlTouchEvent event, barTouchResponse) {
                              setState(
                                () {
                                  if (!event.isInterestedForInteractions || barTouchResponse == null || barTouchResponse.spot == null) {
                                    touchedIndex = -1;
                                    return;
                                  }
                                  touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
                                },
                              );
                            },
                          ),
                          titlesData: FlTitlesData(
                            show: true,
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: true, reservedSize: 50, interval: 1, getTitlesWidget: bottomTitles),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: true, reservedSize: 50, interval: 50, getTitlesWidget: leftTitleWidgets),
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
                            grafica(0, ev0, e0),
                            grafica(1, ev1, e1),
                            grafica(2, ev2, e2),
                            grafica(3, ev3, e3),
                            grafica(4, ev4, e4),
                            grafica(5, ev5, e5),
                          ],
                          //barGroups: getData(),
                        ),
                      ),
                    ),
                  ),
                  /* const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: SizedBox(width: 1204, height: 280, child: TablaLastWeekJobs()),
                  )*/
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
