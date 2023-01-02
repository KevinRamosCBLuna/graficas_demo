import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/week_provider.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/graficas%20tendencia/tech_util_trend.dart';
import 'package:graficas_demo/screens/tablas%20pluto/tabla_tech_util.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:provider/provider.dart';

import 'graficas tendencia/other_trend.dart';

class TechUtilization extends StatefulWidget {
  const TechUtilization({Key? key}) : super(key: key);

  @override
  State<TechUtilization> createState() => _TechUtilizationState();
}

class _TechUtilizationState extends State<TechUtilization> {
  double uti = 67,
      uti1 = 63,
      uti2 = 89,
      uti3 = 115,
      uti4 = 37,
      uti5 = 112,
      uti6 = 12,
      uti7 = 82,
      uti8 = 78,
      uti9 = 73;
  Color col1 = Colors.red,
      col2 = Colors.green,
      col3 = Colors.grey,
      col4 = Colors.orange,
      col5 = const Color.fromARGB(255, 76, 97, 175),
      col6 = const Color.fromARGB(255, 228, 124, 233),
      col7 = const Color.fromARGB(255, 254, 80, 92),
      col8 = const Color.fromARGB(255, 76, 175, 173),
      col9 = const Color.fromARGB(255, 105, 208, 120),
      col10 = const Color.fromARGB(255, 252, 252, 106);
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
        text = 'Adam B.';
        break;
      case 1:
        text = 'Alex O.';
        break;
      case 2:
        text = 'Ben C.';
        break;
      case 3:
        text = 'Brandon M.';
        break;
      case 4:
        text = 'Dylan H.';
        break;
      case 5:
        text = 'Joseph T.';
        break;
      case 6:
        text = 'Larry P.';
        break;
      case 7:
        text = 'Team 1';
        break;
      case 8:
        text = 'Team 2';
        break;
      case 9:
        text = 'Terry I.';
        break;

      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: AppTheme.primarStyle),
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
    SendWeek week_provider = Provider.of<SendWeek>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tech Utilization'),
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
                                uti = 67;
                                uti1 = 63;
                                uti2 = 89;
                                uti3 = 115;
                                uti4 = 37;
                                uti5 = 112;
                                uti6 = 12;
                                uti7 = 82;
                                uti8 = 78;
                                uti9 = 73;

                                week_provider.setWeekTechUtil(50);
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
                                uti = 6;
                                uti1 = 4;
                                uti2 = 2;
                                uti3 = 8;
                                uti4 = 9;
                                uti5 = 2;
                                uti6 = 6;
                                uti7 = 1;
                                uti8 = 4;
                                uti9 = 43;

                                week_provider.setWeekTechUtil(51);
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
                                uti = 4;
                                uti1 = 11;
                                uti2 = 2;
                                uti3 = 7;
                                uti4 = 3;
                                uti5 = 14;
                                uti6 = 3;
                                uti7 = 7;
                                uti8 = 8;
                                uti9 = 7;

                                week_provider.setWeekTechUtil(52);
                              },
                            ),
                          },
                          icon: const Icon(Icons.bar_chart),
                          label: const Text(
                            'Week 52',
                            style: AppTheme.secundaryStyle,
                          ),
                        ),
                         ElevatedButton.icon(
                          onPressed: () async => {
                            await showDialog(
                              context: context,
                              builder: (context) {
                                return const TechUtilTrend();
                              },
                            ),
                          },
                          icon: const Icon(Icons.bar_chart),
                          label: const Text(
                            'Trend',
                            style: AppTheme.secundaryStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Tech Utilization Week ${week_provider.weekTechUtil}',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Row(
                  //   mainAxisSize: MainAxisSize.max,
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: <Widget>[
                  //     Indicator(color: disco, text: 'Disconnect', isSquare: false, size: 16, textColor: Colors.black),
                  //     Indicator(color: ins, text: 'Install', isSquare: false, size: 16, textColor: Colors.black),
                  //     Indicator(color: oth, text: 'Other', isSquare: false, size: 16, textColor: Colors.black),
                  //     Indicator(color: serv, text: 'Service', isSquare: false, size: 16, textColor: Colors.black),
                  //   ],
                  // ),
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
                              tooltipBgColor:
                                  const Color.fromARGB(255, 204, 204, 204),
                              getTooltipItem:
                                  (group, groupIndex, rod, rodIndex) {
                                String n1;
                                switch (group.x.toInt()) {
                                  case 0:
                                    n1 = '$uti%';

                                    break;
                                  case 1:
                                    n1 = '$uti1%';

                                    break;
                                  case 2:
                                    n1 = '$uti2%';

                                    break;
                                  case 3:
                                    n1 = '$uti3%';

                                    break;
                                  case 4:
                                    n1 = '$uti4%';

                                    break;
                                  case 5:
                                    n1 = '$uti5%';

                                    break;
                                  case 6:
                                    n1 = '$uti6%';

                                    break;
                                  case 7:
                                    n1 = '$uti7%';

                                    break;
                                  case 8:
                                    n1 = '$uti8%';

                                    break;
                                  case 9:
                                    n1 = '$uti9%';

                                    break;
                                  default:
                                    throw Error();
                                }
                                return BarTooltipItem(n1, AppTheme.primarStyle);
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
                                  touchedIndex = barTouchResponse
                                      .spot!.touchedBarGroupIndex;
                                },
                              );
                            },
                          ),
                          titlesData: FlTitlesData(
                            show: true,
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 30,
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
                            grafica(0, uti >= 100 ? 100 : uti, col1),
                            grafica(1, uti1 >= 100 ? 100 : uti1, col2),
                            grafica(2, uti2 >= 100 ? 100 : uti2, col3),
                            grafica(3, uti3 >= 100 ? 100 : uti3, col4),
                            grafica(4, uti4 >= 100 ? 100 : uti4, col5),
                            grafica(5, uti5 >= 100 ? 100 : uti5, col6),
                            grafica(6, uti6 >= 100 ? 100 : uti6, col7),
                            grafica(7, uti7 >= 100 ? 100 : uti7, col8),
                            grafica(8, uti8 >= 100 ? 100 : uti8, col9),
                            grafica(9, uti9 >= 100 ? 100 : uti9, col10),
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
                  const Flexible(child: TablaTechUtil()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
