import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

// ignore: camel_case_types
class Envios_NC extends StatefulWidget {
  const Envios_NC({Key? key}) : super(key: key);

  @override
  State<Envios_NC> createState() => _Envios_NCState();
}

// ignore: camel_case_types
class _Envios_NCState extends State<Envios_NC> {
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
            color: Colors.blueAccent,
            width: 50,
            borderRadius: BorderRadius.zero),
        BarChartRodData(
            fromY: acep,
            toY: recha + acep,
            color: Colors.orangeAccent,
            width: 50,
            backDrawRodData: BackgroundBarChartRodData(
                color: Colors.orangeAccent,
                fromY: recha,
                toY: 100,
                show: false),
            borderRadius: BorderRadius.zero)
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Prov.1';
        break;
      case 1:
        text = 'Prov.16';
        break;
      case 2:
        text = 'Prov.35';
        break;
      case 3:
        text = 'Prov.7';
        break;
      case 4:
        text = 'Prov.9';
        break;
      case 5:
        text = 'Prov.4';
        break;
      case 6:
        text = 'Prov.14';
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
          title: const Text('% de envios de NC - Pull NC Pago'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(children: <Widget>[
          const SizedBox(
            height: 28,
          ),
         const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  <Widget>[
              Indicator(
                color: Colors.blueAccent,
                text: 'Suma de % Respuesta',
                isSquare: false,
                size: 18,
                textColor: Colors.black,
              ),
              Indicator(
                  color: Colors.orangeAccent,
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
                                ace = '94';
                                rec = '6';
                                break;
                              case 1:
                                ace = '70';
                                rec = '30';
                                break;
                              case 2:
                                ace = '54';
                                rec = '46';
                                break;
                              case 3:
                                ace = '52';
                                rec = '48';
                                break;
                              case 4:
                                ace = '49';
                                rec = '51';
                                break;
                              case 5:
                                ace = '18';
                                rec = '82';
                                break;
                              case 6:
                                ace = '15';
                                rec = '85';
                                break;
                              default:
                                throw Error();
                            }
                            return BarTooltipItem(
                              '$ace%\n',
                              const TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '$rec%',
                                  style: const TextStyle(
                                    color: Colors.orangeAccent,
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
                      generateGroupData(0, 94, 6),
                      generateGroupData(1, 70, 30),
                      generateGroupData(2, 54, 46),
                      generateGroupData(3, 52, 48),
                      generateGroupData(4, 49, 51),
                      generateGroupData(5, 18, 82),
                      generateGroupData(6, 15, 85),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ])));
  }
}
