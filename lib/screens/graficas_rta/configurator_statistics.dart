import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/week_provider.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/theme/App_theme.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:provider/provider.dart';

import '../graficas tendencia/configurator_statistics.dart';
import '../tablas pluto/tabla_configurator_statistics.dart';

class ConfiguratorStatistics extends StatefulWidget {
  const ConfiguratorStatistics({Key? key}) : super(key: key);

  @override
  State<ConfiguratorStatistics> createState() => _ConfiguratorStatisticsState();
}

class _ConfiguratorStatisticsState extends State<ConfiguratorStatistics> {
  List<double> asaelList = [0, 3, 4, 0, 0, 0, 0],
      jillList = [2, 1, 0, 0, 0, 0, 0],
      rosaliaList = [1, 3, 0, 0, 0, 0, 0],
      rubyList = [3, 2, 0, 0, 0, 0, 0],
      shirleList = [8, 4, 0, 0, 0, 0, 0],
      steveList = [4, 0, 0, 0, 0, 0, 0];
  Color c1 = Colors.blue, c2 = Colors.cyan, c3 = Colors.green, c4 = Colors.yellow, c5 = Colors.deepOrange, c6 = Colors.pink, c7 = Colors.purple;
  int touchedIndex = -1;
  late PlutoGridStateManager stateManager;
  BarChartGroupData generateGroupData(int x, double min, superGig, galactic, tvg1, tvg2, tvg3, voice) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
      barRods: [
        BarChartRodData(fromY: 0, toY: min, color: c1, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: min, toY: min + superGig, color: c2, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: min + superGig, toY: min + superGig + galactic, color: c3, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: min + superGig + galactic, toY: min + superGig + galactic + tvg1, color: c4, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: min + superGig + galactic + tvg1, toY: min + superGig + galactic + tvg1 + tvg2, color: c5, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: min + superGig + galactic + tvg1 + tvg2, toY: min + superGig + galactic + tvg1 + tvg2 + tvg3, color: c6, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: min + superGig + galactic + tvg1 + tvg2 + tvg3, toY: min + superGig + galactic + tvg1 + tvg2 + tvg3 + voice, color: c7, width: 50, borderRadius: BorderRadius.zero)
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'asael.brancamontes\n@rtatel.com';
        break;
      case 1:
        text = 'jill.tarango\n@rtatel.com';
        break;
      case 2:
        text = 'rosalie.silvey\n@rtatel.com';
        break;
      case 3:
        text = 'ruby.cagle\n@rtatel.com';
        break;
      case 4:
        text = 'shirley.seaholm\n@rtatel.com';
        break;
      case 5:
        text = 'steve.stanley\n@rtatel.com';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        text,
        style: AppTheme.primarStyle,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        '$value',
        style: AppTheme.primarStyle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    SendWeek weekProvider = Provider.of<SendWeek>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Rep Sales By Service'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Customer Rep Sales By Service',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
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
                                asaelList = [0, 3, 4, 0, 0, 0, 0];
                                jillList = [2, 1, 0, 0, 0, 0, 0];
                                rosaliaList = [1, 3, 0, 0, 0, 0, 0];
                                rubyList = [3, 2, 0, 0, 0, 0, 0];
                                shirleList = [8, 4, 0, 0, 0, 0, 0];
                                steveList = [4, 0, 0, 0, 0, 0, 0];

                                weekProvider.setWeekTechUtil(50);
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
                                asaelList = [0, 1, 2, 3, 0, 0, 0];
                                jillList = [4, 2, 1, 0, 0, 0, 1];
                                rosaliaList = [0, 0, 1, 2, 3, 0, 0];
                                rubyList = [1, 1, 0, 0, 0, 4, 1];
                                shirleList = [0, 1, 0, 0, 4, 1, 0];
                                steveList = [2, 0, 0, 0, 2, 0, 6];
                                weekProvider.setWeekTechUtil(51);
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
                                asaelList = [0, 0, 1, 2, 4, 0, 0];
                                jillList = [2, 1, 0, 0, 0, 3, 1];
                                rosaliaList = [1, 3, 0, 1, 0, 2, 0];
                                rubyList = [3, 2, 0, 0, 4, 1, 0];
                                shirleList = [2, 4, 0, 0, 0, 0, 1];
                                steveList = [1, 0, 4, 0, 0, 6, 0];
                                weekProvider.setWeekTechUtil(52);
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
                                return const ConfiguratorStatisticsTrend();
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
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: SizedBox(width: screenWidth, height: 280, child: const TablaConfiguratorStatistics()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Indicator(color: c1, text: '50 Min Gig (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                        Indicator(color: c2, text: '50 Super Gig(SUM)', isSquare: false, size: 16, textColor: Colors.black),
                        Indicator(color: c3, text: '50 Galactic Gig (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                        Indicator(color: c4, text: '50 tvg1 (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                        Indicator(color: c5, text: '50 TVG2 (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                        Indicator(color: c6, text: '50 TVG3 (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                        Indicator(color: c7, text: '50 Voice (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: SizedBox(
                      width: 1204,
                      height: 300,
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.spaceAround,
                          barTouchData: BarTouchData(
                            enabled: true,
                            touchTooltipData: BarTouchTooltipData(
                                tooltipBgColor: const Color.fromARGB(255, 204, 204, 204),
                                getTooltipItem: (group, groupIndex, rod, rodIndex) {
                                  String? n1;
                                  TextStyle tooltipstyle = AppTheme.primarStyle;
                                  if (group.x == 0) {
                                    switch (rodIndex) {
                                      case 0:
                                        n1 = '${asaelList[0]}';
                                        //tooltipstyle = TextStyle(color: c1, fontSize: 16, fontWeight: FontWeight.bold);
                                        break;
                                      case 1:
                                        n1 = '${asaelList[1]}';
                                        //tooltipstyle = TextStyle(color: c2, fontSize: 16, fontWeight: FontWeight.bold);
                                        break;
                                      case 2:
                                        n1 = '${asaelList[2]}';
                                        // tooltipstyle = TextStyle(color: c3, fontSize: 16, fontWeight: FontWeight.bold);
                                        break;
                                      case 3:
                                        n1 = '${asaelList[3]}';
                                        // tooltipstyle = TextStyle(color: c4, fontSize: 16, fontWeight: FontWeight.bold);
                                        break;
                                      case 4:
                                        n1 = '${asaelList[4]}';
                                        // tooltipstyle = TextStyle(color: c5, fontSize: 16, fontWeight: FontWeight.bold);
                                        break;
                                      case 5:
                                        n1 = '${asaelList[5]}';
                                        // tooltipstyle = TextStyle(color: c6, fontSize: 16, fontWeight: FontWeight.bold);
                                        break;
                                      case 6:
                                        n1 = '${asaelList[6]}';
                                        // tooltipstyle = TextStyle(color: c7, fontSize: 16, fontWeight: FontWeight.bold);
                                        break;
                                      default:
                                        throw Error();
                                    }
                                  } else if (group.x == 1) {
                                    switch (rodIndex) {
                                      case 0:
                                        n1 = '${jillList[0]}';
                                        break;
                                      case 1:
                                        n1 = '${jillList[1]}';
                                        break;
                                      case 2:
                                        n1 = '${jillList[2]}';
                                        break;
                                      case 3:
                                        n1 = '${jillList[3]}';
                                        break;
                                      case 4:
                                        n1 = '${jillList[4]}';
                                        break;
                                      case 5:
                                        n1 = '${jillList[5]}';
                                        break;
                                      case 6:
                                        n1 = '${jillList[6]}';
                                        break;
                                      default:
                                        throw Error();
                                    }
                                  } else if (group.x == 2) {
                                    switch (rodIndex) {
                                      case 0:
                                        n1 = '${rosaliaList[0]}';
                                        break;
                                      case 1:
                                        n1 = '${rosaliaList[1]}';
                                        break;
                                      case 2:
                                        n1 = '${rosaliaList[2]}';
                                        break;
                                      case 3:
                                        n1 = '${rosaliaList[3]}';
                                        break;
                                      case 4:
                                        n1 = '${rosaliaList[4]}';
                                        break;
                                      case 5:
                                        n1 = '${rosaliaList[5]}';
                                        break;
                                      case 6:
                                        n1 = '${rosaliaList[6]}';
                                        break;
                                      default:
                                        throw Error();
                                    }
                                  } else if (group.x == 3) {
                                    switch (rodIndex) {
                                      case 0:
                                        n1 = '${rubyList[0]}';
                                        break;
                                      case 1:
                                        n1 = '${rubyList[1]}';
                                        break;
                                      case 2:
                                        n1 = '${rubyList[2]}';
                                        break;
                                      case 3:
                                        n1 = '${rubyList[3]}';
                                        break;
                                      case 4:
                                        n1 = '${rubyList[4]}';
                                        break;
                                      case 5:
                                        n1 = '${rubyList[5]}';
                                        break;
                                      case 6:
                                        n1 = '${rubyList[6]}';
                                        break;
                                      default:
                                        throw Error();
                                    }
                                  } else if (group.x == 4) {
                                    switch (rodIndex) {
                                      case 0:
                                        n1 = '${shirleList[0]}';
                                        break;
                                      case 1:
                                        n1 = '${shirleList[1]}';
                                        break;
                                      case 2:
                                        n1 = '${shirleList[2]}';
                                        break;
                                      case 3:
                                        n1 = '${shirleList[3]}';
                                        break;
                                      case 4:
                                        n1 = '${shirleList[4]}';
                                        break;
                                      case 5:
                                        n1 = '${shirleList[5]}';
                                        break;
                                      case 6:
                                        n1 = '${shirleList[6]}';
                                        break;
                                      default:
                                        throw Error();
                                    }
                                  } else if (group.x == 5) {
                                    switch (rodIndex) {
                                      case 0:
                                        n1 = '${steveList[0]}';
                                        break;
                                      case 1:
                                        n1 = '${steveList[1]}';
                                        break;
                                      case 2:
                                        n1 = '${steveList[2]}';
                                        break;
                                      case 3:
                                        n1 = '${steveList[3]}';
                                        break;
                                      case 4:
                                        n1 = '${steveList[4]}';
                                        break;
                                      case 5:
                                        n1 = '${steveList[5]}';
                                        break;
                                      case 6:
                                        n1 = '${steveList[6]}';
                                        break;
                                      default:
                                        throw Error();
                                    }
                                  }
                                  return BarTooltipItem(n1 ?? '', tooltipstyle);
                                }),
                            touchCallback: (FlTouchEvent event, barTouchResponse) {
                              setState(() {
                                if (!event.isInterestedForInteractions || barTouchResponse == null || barTouchResponse.spot == null) {
                                  touchedIndex = -1;
                                  return;
                                }
                                touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
                              });
                            },
                          ),
                          titlesData: FlTitlesData(
                            show: true,
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: true, reservedSize: 45, interval: 1, getTitlesWidget: bottomTitles),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: true, reservedSize: 50, getTitlesWidget: leftTitleWidgets),
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
                          maxY: 12,
                          groupsSpace: 30,
                          barGroups: [
                            generateGroupData(0, asaelList[0], asaelList[1], asaelList[2], asaelList[3], asaelList[4], asaelList[5], asaelList[6]),
                            generateGroupData(1, jillList[0], jillList[1], jillList[2], jillList[3], jillList[4], jillList[5], jillList[6]),
                            generateGroupData(2, rosaliaList[0], rosaliaList[1], rosaliaList[2], rosaliaList[3], rosaliaList[4], rosaliaList[5], rosaliaList[6]),
                            generateGroupData(3, rubyList[0], rubyList[1], rubyList[2], rubyList[3], rubyList[4], rubyList[5], rubyList[6]),
                            generateGroupData(4, shirleList[0], shirleList[1], shirleList[2], shirleList[3], shirleList[4], shirleList[5], shirleList[6]),
                            generateGroupData(5, steveList[0], steveList[1], steveList[2], steveList[3], steveList[4], steveList[5], steveList[6]),
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
