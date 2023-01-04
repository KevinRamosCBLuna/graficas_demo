import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/week_provider.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/tablas%20pluto/tabla_service.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:provider/provider.dart';

import 'graficas tendencia/trend_service.dart';

class ServicesPie extends StatefulWidget {
  const ServicesPie({Key? key}) : super(key: key);

  @override
  State<ServicesPie> createState() => _ServicesState();
}

class _ServicesState extends State<ServicesPie> {
  double dis = 3, inst = 33, othe = 4, ser = 60;
  Color disco = Colors.red, ins = Colors.green, oth = Colors.grey, serv = Colors.orange;
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
        title: const Text('ServicesPie'),
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
                                weekProvider.setWeek(50);
                                dis = 3;
                                inst = 33;
                                othe = 4;
                                ser = 60;
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
                                weekProvider.setWeek(51);
                                dis = 3.17;
                                inst = 30.51;
                                othe = 1.11;
                                ser = 65.21;
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Indicator(
                        color: disco,
                        text: 'Disconnect   ',
                        isSquare: false,
                        size: touchedIndex == 0 ? 18 : 16,
                        textColor: touchedIndex == 0 ? Colors.black : Colors.grey,
                      ),
                      Indicator(
                        color: ins,
                        text: 'Install   ',
                        isSquare: false,
                        size: touchedIndex == 1 ? 18 : 16,
                        textColor: touchedIndex == 1 ? Colors.black : Colors.grey,
                      ),
                      Indicator(
                        color: oth,
                        text: 'Other   ',
                        isSquare: false,
                        size: touchedIndex == 2 ? 18 : 16,
                        textColor: touchedIndex == 2 ? Colors.black : Colors.grey,
                      ),
                      Indicator(
                        color: serv,
                        text: 'Service',
                        isSquare: false,
                        size: touchedIndex == 3 ? 18 : 16,
                        textColor: touchedIndex == 3 ? Colors.black : Colors.grey,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: 800,
                      height: 350,
                      child: PieChart(
                        PieChartData(
                            pieTouchData: PieTouchData(touchCallback: (FlTouchEvent event, pieTouchResponse) {
                              setState(() {
                                if (!event.isInterestedForInteractions || pieTouchResponse == null || pieTouchResponse.touchedSection == null) {
                                  touchedIndex = -1;
                                  return;
                                }
                                touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
                              });
                            }),
                            borderData: FlBorderData(
                              show: false,
                            ),
                            sectionsSpace: 0,
                            centerSpaceRadius: 100,
                            sections: showingSections()),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: SizedBox(width: 1005, height: 96, child: TablaService()),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 15.0;
      final radius = isTouched ? 100.0 : 75.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: disco,
            value: dis,
            title: '$dis% ',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: ins,
            value: inst,
            title: '$inst%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: oth,
            value: othe == 0 ? othe = .1 : othe,
            title: othe == .1 ? '' : '$othe%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: serv,
            value: ser,
            title: '$ser%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}
