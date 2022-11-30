import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

class ConfiguratorWeeklyLeadsOpCop2 extends StatefulWidget {
  const ConfiguratorWeeklyLeadsOpCop2({Key? key}) : super(key: key);

  @override
  State<ConfiguratorWeeklyLeadsOpCop2> createState() => _ConfiguratorWeeklyLeadsOpCop2State();
}

class _ConfiguratorWeeklyLeadsOpCop2State extends State<ConfiguratorWeeklyLeadsOpCop2> {
  int touchedIndex = -1;
  BarChartGroupData generateGroupData(int x, double n1, n2, n3, n4, n5, n6, n7, n8) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
      barRods: [
        BarChartRodData(fromY: 0, toY: n1, color: Colors.lime, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: n1, toY: n1 + n2, color: Colors.grey, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: n1 + n2, toY: n1 + n2 + n3, color: Colors.green, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: n1 + n2 + n3, toY: n1 + n2 + n3 + n4, color: Colors.yellow, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: n1 + n2 + n3 + n4, toY: n1 + n2 + n3 + n4 + n5, color: Colors.purple, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: n1 + n2 + n3 + n4 + n5, toY: n1 + n2 + n3 + n4 + n5 + n6, color: Colors.pinkAccent, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: n1 + n2 + n3 + n4 + n5 + n6, toY: n1 + n2 + n3 + n4 + n5 + n6 + n7, color: Colors.blue, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: n1 + n2 + n3 + n4 + n5 + n6 + n7, toY: n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8, color: Colors.cyan, width: 50, borderRadius: BorderRadius.zero),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '41 Total(Sum)';
        break;
      case 1:
        text = '42 Total(Sum)';
        break;
      case 2:
        text = '43 Total(Sum)';
        break;
      case 3:
        text = '44 Total(Sum)';
        break;
      case 4:
        text = '45 Total(Sum)';
        break;
      case 5:
        text = '46 Total(Sum)';
        break;
      case 6:
        text = '47 Total(Sum)';
        break;
      case 7:
        text = '48 Total(Sum)';
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
        '$value',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 28,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Indicator(color: Colors.lime, text: 'asael.brancamontes@rtatel.com', isSquare: false, size: 16, textColor: Colors.black),
                Indicator(color: Colors.grey, text: 'Brooke.Johson@rtatel.com', isSquare: false, size: 16, textColor: Colors.black),
                Indicator(color: Colors.green, text: 'destinee.conkel@rtatel.com', isSquare: false, size: 16, textColor: Colors.black),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Indicator(color: Colors.yellow, text: 'jill.tarango@rtatel.com', isSquare: false, size: 16, textColor: Colors.black),
                Indicator(color: Colors.purple, text: 'rosaline.silvey@rtatel.com', isSquare: false, size: 16, textColor: Colors.black),
                Indicator(color: Colors.pinkAccent, text: 'ruby.cagle@rtatel.com', isSquare: false, size: 16, textColor: Colors.black),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Indicator(color: Colors.blue, text: 'shirley.seaholm@rtatel.com', isSquare: false, size: 16, textColor: Colors.black),
                Indicator(color: Colors.cyan, text: 'steve.stanley@rtatel.com', isSquare: false, size: 16, textColor: Colors.black),
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
                            tooltipBgColor: Color.fromARGB(255, 222, 222, 222),
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              String n1, n2, n3, n4, n5, n6, n7, n8;
                              switch (group.x.toInt()) {
                                case 0:
                                  n1 = '6';
                                  n2 = '0';
                                  n3 = '1';
                                  n4 = '2';
                                  n5 = '6';
                                  n6 = '1';
                                  n7 = '2';
                                  n8 = '12';
                                  break;
                                case 1:
                                  n1 = '5';
                                  n2 = '0';
                                  n3 = '1';
                                  n4 = '3';
                                  n5 = '4';
                                  n6 = '6';
                                  n7 = '21';
                                  n8 = '6';
                                  break;
                                case 2:
                                  n1 = '4';
                                  n2 = '1';
                                  n3 = '0';
                                  n4 = '3';
                                  n5 = '1';
                                  n6 = '3';
                                  n7 = '17';
                                  n8 = '5';
                                  break;
                                case 3:
                                  n1 = '7';
                                  n2 = '0';
                                  n3 = '0';
                                  n4 = '2';
                                  n5 = '3';
                                  n6 = '8';
                                  n7 = '12';
                                  n8 = '5';
                                  break;
                                case 4:
                                  n1 = '10';
                                  n2 = '1';
                                  n3 = '0';
                                  n4 = '6';
                                  n5 = '3';
                                  n6 = '0';
                                  n7 = '8';
                                  n8 = '8';
                                  break;
                                case 5:
                                  n1 = '13';
                                  n2 = '0';
                                  n3 = '0';
                                  n4 = '2';
                                  n5 = '2';
                                  n6 = '2';
                                  n7 = '9';
                                  n8 = '2';
                                  break;
                                case 6:
                                  n1 = '5';
                                  n2 = '0';
                                  n3 = '1';
                                  n4 = '4';
                                  n5 = '3';
                                  n6 = '2';
                                  n7 = '8';
                                  n8 = '5';
                                  break;
                                case 7:
                                  n1 = '10';
                                  n2 = '0';
                                  n3 = '0';
                                  n4 = '2';
                                  n5 = '0';
                                  n6 = '4';
                                  n7 = '8';
                                  n8 = '4';
                                  break;
                                default:
                                  throw Error();
                              }
                              return BarTooltipItem(
                                '$n1 \n',
                                const TextStyle(
                                  color: Colors.lime,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '$n2 \n',
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '$n3 \n',
                                    style: const TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '$n4 \n',
                                    style: const TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '$n5 \n',
                                    style: const TextStyle(
                                      color: Colors.purple,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '$n6 \n',
                                    style: const TextStyle(
                                      color: Colors.pinkAccent,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '$n7 \n',
                                    style: const TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '$n8 ',
                                    style: const TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              );
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
                          sideTitles: SideTitles(showTitles: true, reservedSize: 100, interval: 1, getTitlesWidget: bottomTitles),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: true, reservedSize: 50, interval: 12.5, getTitlesWidget: leftTitleWidgets),
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
                      maxY: 50,
                      groupsSpace: 50,
                      barGroups: [
                        generateGroupData(0, 6, 0, 1, 2, 6, 1, 2, 12),
                        generateGroupData(1, 5, 0, 1, 3, 4, 6, 21, 6),
                        generateGroupData(2, 4, 1, 0, 3, 1, 3, 17, 7),
                        generateGroupData(3, 7, 0, 0, 2, 3, 8, 12, 5),
                        generateGroupData(4, 10, 1, 0, 6, 3, 0, 8, 8),
                        generateGroupData(5, 13, 0, 0, 2, 2, 2, 9, 2),
                        generateGroupData(6, 5, 0, 1, 4, 3, 2, 8, 5),
                        generateGroupData(7, 10, 0, 0, 2, 0, 4, 8, 4),
                      ],
                      //barGroups: getData(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
