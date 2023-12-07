// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/tablas%20pluto/tabla_sm_promo2.dart';

class SmPromo2 extends StatefulWidget {
  const SmPromo2({Key? key}) : super(key: key);

  @override
  State<SmPromo2> createState() => _SmPromo2State();
}

class _SmPromo2State extends State<SmPromo2> {
  int touchedIndex = -1;
  BarChartGroupData generateGroupData(int x, double acep, double recha, double smi) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
      barRods: [
        BarChartRodData(fromY: 0, toY: acep, color: Colors.blue, width: 80, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: acep, toY: acep + recha, color: Colors.green, width: 80, borderRadius: BorderRadius.zero),
        BarChartRodData(fromY: acep + recha, toY: acep + recha + smi, color: Colors.orange, width: 80, borderRadius: BorderRadius.zero)
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'CRY';
        break;
      case 1:
        text = 'ODE';
        break;
      case 2:
        text = 'SMI';
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
        title: const Text('SM Promo by OpCo & Promo'),
        centerTitle: true,
      ),
      body: Center(
        child: Expanded(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 28,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'SM Promo by OpCo & Promo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  <Widget>[
                  Indicator(color: Colors.blue, text: 'SM380722 CustomerID(Count (All))', isSquare: false, size: 16, textColor: Colors.black),
                  Indicator(color: Colors.green, text: 'SM680722 CustomerID(Count (All))', isSquare: false, size: 16, textColor: Colors.black),
                  Indicator(color: Colors.orange, text: 'SM980722 CustomerID(Count (All))', isSquare: false, size: 16, textColor: Colors.black),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 800,
                  height: 330,
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
                              String smi;
                              switch (group.x.toInt()) {
                                case 0:
                                  ace = '3';
                                  rec = '2';
                                  smi = '9';
                                  break;
                                case 1:
                                  ace = '2';
                                  rec = '19';
                                  smi = '31';
                                  break;
                                case 2:
                                  ace = '0';
                                  rec = '4';
                                  smi = '0';
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
                                    text: '$rec \n',
                                    style: const TextStyle(
                                      color: Colors.green,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '$smi ',
                                    style: const TextStyle(
                                      color: Colors.orange,
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
                          sideTitles: SideTitles(showTitles: true, reservedSize: 30, interval: 1, getTitlesWidget: bottomTitles),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: true, reservedSize: 50, interval: 15, getTitlesWidget: leftTitleWidgets),
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
                      maxY: 60,
                      groupsSpace: 25,
                      barGroups: [
                        generateGroupData(0, 3, 2, 9),
                        generateGroupData(1, 2, 19, 31),
                        generateGroupData(2, 0, 4, 0),
                      ],
                      //barGroups: getData(),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: SizedBox(width: 1005, height: 280, child: TablaSmPromo2()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
