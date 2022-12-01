// ignore_for_file: camel_case_types

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ReferralsTrackingByWeek extends StatefulWidget {
  const ReferralsTrackingByWeek({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ReferralsTrackingByWeekState();
}

class ReferralsTrackingByWeekState extends State<ReferralsTrackingByWeek> {
  BarChartGroupData generateGroupData(int x, double fondosNu) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
      barRods: [
        BarChartRodData(fromY: 0, toY: fondosNu, color: Colors.blue, width: 60, borderRadius: BorderRadius.zero),
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
        '\$ $value.00',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refferals Tracking By Week'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Referrals Tracking By Week',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1.66,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, right: 25),
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.center,
                      barTouchData: BarTouchData(enabled: true, touchTooltipData: BarTouchTooltipData(tooltipBgColor: const Color.fromARGB(255, 204, 204, 204))),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: true, reservedSize: 100, getTitlesWidget: bottomTitles),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: true, reservedSize: 120, interval: 4),
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
                      groupsSpace: 50,
                      maxY: 16,
                      barGroups: [
                        generateGroupData(0, 15),
                        generateGroupData(1, 12),
                        generateGroupData(2, 13),
                        generateGroupData(3, 15),
                        generateGroupData(4, 8),
                        generateGroupData(5, 4),
                        generateGroupData(6, 9),
                        generateGroupData(7, 11),
                      ],
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
