import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/graficas%20tendencia/trend_service.dart';
import 'package:graficas_demo/screens/tablas%20pluto/tabla_service.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:provider/provider.dart';
import 'package:graficas_demo/providers/week_provider.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  double dis = 3, inst = 33, othe = 4, ser = 60, week = 50;
  Color disco = Colors.red, ins = Colors.green, oth = Colors.grey, serv = Colors.orange;
  int touchedIndex = -1;
  late PlutoGridStateManager stateManager;
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
        text = 'Disconnect';
        break;
      case 1:
        text = 'Install';
        break;
      case 2:
        text = 'Other';
        break;
      case 3:
        text = 'Service';
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
    SendWeek weekProvider = Provider.of<SendWeek>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
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
                                dis = 3;
                                inst = 33;
                                othe = 4;
                                ser = 60;
                                weekProvider.setWeek(50);
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
                                dis = 3.17;
                                inst = 30.51;
                                othe = 1.11;
                                ser = 65.21;
                                weekProvider.setWeek(51);
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
                                dis = 4.72;
                                inst = 43.03;
                                othe = 0;
                                ser = 52.25;
                                weekProvider.setWeek(52);
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
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (context) {
                                return const TrendService();
                              },
                            );
                          },
                          icon: const Icon(Icons.ssid_chart),
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
                      'Services Week ${weekProvider.weekOther}',
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Indicator(color: disco, text: 'Disconnect', isSquare: false, size: 16, textColor: Colors.black),
                      Indicator(color: ins, text: 'Install', isSquare: false, size: 16, textColor: Colors.black),
                      Indicator(color: oth, text: 'Other', isSquare: false, size: 16, textColor: Colors.black),
                      Indicator(color: serv, text: 'Service', isSquare: false, size: 16, textColor: Colors.black),
                    ],
                  ),
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
                                    n1 = '$dis%';

                                    break;
                                  case 1:
                                    n1 = '$inst%';

                                    break;
                                  case 2:
                                    n1 = '$othe%';

                                    break;
                                  case 3:
                                    n1 = '$ser%';

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
                              sideTitles: SideTitles(showTitles: true, reservedSize: 30, interval: 1, getTitlesWidget: bottomTitles),
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
                            grafica(0, dis, disco),
                            grafica(1, inst, ins),
                            grafica(2, othe, oth),
                            grafica(3, ser, serv),
                          ],
                          //barGroups: getData(),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: SizedBox(width: 1005, height: 96, child: TablaService()),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
