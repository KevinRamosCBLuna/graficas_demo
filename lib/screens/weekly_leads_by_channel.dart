import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

class WeeklyLeadsChannel extends StatefulWidget {
  const WeeklyLeadsChannel({Key? key}) : super(key: key);

  @override
  State<WeeklyLeadsChannel> createState() => _WeeklyLeadsChannelState();
}

class _WeeklyLeadsChannelState extends State<WeeklyLeadsChannel> {
  int touchedIndex = -1;
  BarChartGroupData generateGroupData(int x, double acep, double recha) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
      barRods: [
        BarChartRodData(fromY: 0, toY: acep, color: Colors.blue, width: 50, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: acep, toY: acep + recha, color: Colors.cyan, width: 50, borderRadius: BorderRadius.zero)
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '41';
        break;
      case 1:
        text = '42';
        break;
      case 2:
        text = '43';
        break;
      case 3:
        text = '44';
        break;
      case 4:
        text = '45';
        break;
      case 5:
        text = '46';
        break;
      case 6:
        text = '47';
        break;
      case 7:
        text = '48';
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
        title: const Text('Weekly Leads by Channel'),
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
                'Weekly Leads By Channel',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Indicator(
                  color: Colors.blue,
                  text: 'Customer Rep',
                  isSquare: false,
                  size: 18,
                  textColor: Colors.black,
                ),
                Indicator(color: Colors.cyan, text: 'Website', isSquare: false, size: 16, textColor: Colors.black),
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
                            tooltipBgColor: const Color.fromARGB(255, 204, 204, 204),
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              String ace;
                              String rec;
                              switch (group.x.toInt()) {
                                case 0:
                                  ace = '30';
                                  rec = '3';
                                  break;
                                case 1:
                                  ace = '46';
                                  rec = '0';
                                  break;
                                case 2:
                                  ace = '36';
                                  rec = '1';
                                  break;
                                case 3:
                                  ace = '37';
                                  rec = '2';
                                  break;
                                case 4:
                                  ace = '36';
                                  rec = '3';
                                  break;
                                case 5:
                                  ace = '30';
                                  rec = '2';
                                  break;
                                case 6:
                                  ace = '26';
                                  rec = '0';
                                  break;
                                case 7:
                                  ace = '28';
                                  rec = '2';
                                  break;
                                default:
                                  throw Error();
                              }
                              return BarTooltipItem(
                                '$ace \n',
                                const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '$rec ',
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
                      groupsSpace: 25,
                      barGroups: [
                        generateGroupData(0, 30, 3),
                        generateGroupData(1, 46, 0),
                        generateGroupData(2, 36, 1),
                        generateGroupData(3, 37, 2),
                        generateGroupData(4, 36, 3),
                        generateGroupData(5, 30, 2),
                        generateGroupData(6, 26, 0),
                        generateGroupData(7, 28, 2),
                      ],
                      //barGroups: getData(),
                    ),
                  ),
                ),
              ),
            ),
            const Text('week', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
