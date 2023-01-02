import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/theme/app_theme.dart';

class TrendService extends StatefulWidget {
  const TrendService({Key? key}) : super(key: key);

  @override
  State<TrendService> createState() => _TrendServiceState();
}

class _TrendServiceState extends State<TrendService> {
  double dis = 3, inst = 33, othe = 4, ser = 60, week = 50;
  double dis2 = 3.17, inst2 = 30.51, othe2 = 1.11, ser2 = 65.21;
  double dis3 = 4.72, inst3 = 43.03, othe3 = 0, ser3 = 52.25;
  Color disco = Colors.red, ins = Colors.green, oth = Colors.grey, serv = Colors.orange;
  int touchedIndex = -1;
  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: 0,
        barRods: [
          BarChartRodData(
              width: 40,
              toY: dis,
              color: disco,
              rodStackItems: [
                BarChartRodStackItem(0, dis, disco),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              width: 40,
              toY: inst,
              color: ins,
              rodStackItems: [
                BarChartRodStackItem(0, inst, ins),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 40,
            toY: othe,
            color: oth,
            rodStackItems: [
              BarChartRodStackItem(0, othe, oth),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          ),
          BarChartRodData(
            width: 40,
            toY: ser,
            color: serv,
            rodStackItems: [
              BarChartRodStackItem(0, ser, serv),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 0,
        barRods: [
          BarChartRodData(
              width: 40,
              toY: dis2,
              color: disco,
              rodStackItems: [
                BarChartRodStackItem(0, dis2, disco),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              width: 40,
              toY: inst2,
              color: ins,
              rodStackItems: [
                BarChartRodStackItem(0, inst2, ins),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 40,
            toY: othe2,
            color: oth,
            rodStackItems: [
              BarChartRodStackItem(0, othe2, oth),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          ),
          BarChartRodData(
            width: 40,
            toY: ser2,
            color: serv,
            rodStackItems: [
              BarChartRodStackItem(0, ser2, serv),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 0,
        barRods: [
          BarChartRodData(
              width: 40,
              toY: dis3,
              color: disco,
              rodStackItems: [
                BarChartRodStackItem(0, dis3, disco),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              width: 40,
              toY: inst3,
              color: ins,
              rodStackItems: [
                BarChartRodStackItem(0, inst3, ins),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 40,
            toY: othe3,
            color: oth,
            rodStackItems: [
              BarChartRodStackItem(0, othe3, oth),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          ),
          BarChartRodData(
            width: 40,
            toY: ser3,
            color: serv,
            rodStackItems: [
              BarChartRodStackItem(0, ser3, serv),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
    ];
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    String text;
    double check = 0;
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
          width: 800,
          height: 500,
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          decoration: BoxDecoration(
            color: AppTheme.secundarytext,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 1,
              color: AppTheme.primary,
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Service Trend',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Indicator(color: disco, text: 'Disconnect', isSquare: false, size: 16, textColor: Colors.black),
                    Indicator(color: ins, text: 'Install', isSquare: false, size: 16, textColor: Colors.black),
                    Indicator(color: oth, text: 'Other', isSquare: false, size: 16, textColor: Colors.black),
                    Indicator(color: serv, text: 'Service', isSquare: false, size: 16, textColor: Colors.black),
                  ],
                ),
              ),
              SizedBox(
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
                            String? n1;
                            if (group.x == 0) {
                              switch (rodIndex) {
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
                            } else if (group.x == 1) {
                              switch (rodIndex) {
                                case 0:
                                  n1 = '$dis2%';

                                  break;
                                case 1:
                                  n1 = '$inst2%';

                                  break;
                                case 2:
                                  n1 = '$othe2%';

                                  break;
                                case 3:
                                  n1 = '$ser2%';

                                  break;

                                default:
                                  throw Error();
                              }
                            } else if (group.x == 2) {
                              switch (rodIndex) {
                                case 0:
                                  n1 = '$dis3%';

                                  break;
                                case 1:
                                  n1 = '$inst3%';

                                  break;
                                case 2:
                                  n1 = '$othe3%';

                                  break;
                                case 3:
                                  n1 = '$ser3%';

                                  break;

                                default:
                                  throw Error();
                              }
                            }

                            return BarTooltipItem(n1 ?? '', AppTheme.primarStyle);
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
                      barGroups: getData()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
