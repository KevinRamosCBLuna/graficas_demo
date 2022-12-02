// ignore_for_file: camel_case_types

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Fondos_NU extends StatefulWidget {
  const Fondos_NU({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Fondos_NUState();
}

class Fondos_NUState extends State<Fondos_NU> {
  final Color dark = const Color.fromARGB(255, 6, 24, 183);

  BarChartGroupData generateGroupData(int x, double fondosNu) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
      barRods: [
        BarChartRodData(
            fromY: 0,
            toY: fondosNu,
            color: dark,
            width: 40,
            borderRadius: BorderRadius.zero),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Ene';
        break;
      case 1:
        text = 'Feb';
        break;
      case 2:
        text = 'Mar';
        break;
      case 3:
        text = 'Abr';
        break;
      case 4:
        text = 'May';
        break;
      case 5:
        text = 'Jun';
        break;
      case 6:
        text = 'Jul';
        break;
      case 7:
        text = 'Ago';
        break;
      case 8:
        text = 'Sep';
        break;
      case 9:
        text = 'Oct';
        break;
      case 10:
        text = 'Nov';
        break;
      case 11:
        text = 'Dic';
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
        '\$ $value.00',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fondos No Utilizados'),
        centerTitle: true,
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.66,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, right: 25),
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.center,
                barTouchData: BarTouchData(
                    enabled: true,
                    touchTooltipData: BarTouchTooltipData(
                        tooltipBgColor:
                            const Color.fromARGB(255, 204, 204, 204))),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 100,
                        getTitlesWidget: bottomTitles),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 120,
                        interval: 5000000,
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
                  checkToShowHorizontalLine: (value) => value % 10 == 0,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: const Color(0xffe7e8ec),
                    strokeWidth: 1,
                  ),
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(
                  show: true,
                ),
                groupsSpace: 50,
                maxY: 25000000,
                barGroups: [
                  generateGroupData(0, 0),
                  generateGroupData(1, 0),
                  generateGroupData(2, 21000000),
                  generateGroupData(3, 23500000),
                  generateGroupData(4, 0),
                  generateGroupData(5, 0),
                  generateGroupData(6, 0),
                  generateGroupData(7, 0),
                  generateGroupData(8, 4500000),
                  generateGroupData(9, 0),
                  generateGroupData(10, 0),
                  generateGroupData(11, 2500000),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
