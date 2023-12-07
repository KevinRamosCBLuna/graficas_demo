import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/tablas%20pluto/tabla_configurator_tracking.dart';

class ConfiguratorTracking extends StatefulWidget {
  const ConfiguratorTracking({Key? key}) : super(key: key);

  @override
  State<ConfiguratorTracking> createState() => _ConfiguratorTrackingState();
}

class _ConfiguratorTrackingState extends State<ConfiguratorTracking> {
  int touchedIndex = -1;
  final double n1 = 10, n2 = 1057, n3 = 45, n4 = 10;
  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: n1,
              color: Colors.blue,
              rodStackItems: [
                BarChartRodStackItem(0, 1200, Colors.blue),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: n2,
              color: Colors.green,
              rodStackItems: [
                BarChartRodStackItem(0, 1200, Colors.green),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: n3,
              color: Colors.grey,
              rodStackItems: [
                BarChartRodStackItem(0, 1200, Colors.grey),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: n4,
              color: Colors.orange,
              rodStackItems: [
                BarChartRodStackItem(0, 1200, Colors.orange),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Coverage Lead (SMI)';
        break;
      case 1:
        text = 'Created Lead';
        break;
      case 2:
        text = 'No Coverage Lead';
        break;
      case 3:
        text = 'IPTV Trial';
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
        title: const Text('Configurator Tracking'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                const SizedBox(
                  height: 28,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Configurator Tracking',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    Indicator(
                      color: Colors.blue,
                      text: 'Coverage Lead (SMI)',
                      isSquare: false,
                      size: 18,
                      textColor: Colors.black,
                    ),
                    Indicator(color: Colors.green, text: 'Created Lead', isSquare: false, size: 16, textColor: Colors.black),
                    Indicator(color: Colors.grey, text: 'No Coverage Lead', isSquare: false, size: 16, textColor: Colors.black),
                    Indicator(color: Colors.orange, text: 'IPTV Trial', isSquare: false, size: 16, textColor: Colors.black),
                  ],
                ),
                SizedBox(
                  width: 1000,
                  height: 500,
                  child: AspectRatio(
                    aspectRatio: 1.66,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.center,
                          barTouchData: BarTouchData(
                              enabled: true,
                              touchTooltipData: BarTouchTooltipData(
                                tooltipBgColor: const Color.fromARGB(255, 204, 204, 204),
                              )),
                          titlesData: FlTitlesData(
                            show: true,
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: true, reservedSize: 30, interval: 1, getTitlesWidget: bottomTitles),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: true, reservedSize: 50, interval: 300, getTitlesWidget: leftTitleWidgets),
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
                          maxY: 1200,
                          groupsSpace: 80,
                          barGroups: getData(),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 1205,
                    height: 100,
                    child: TablaConfiguratorTracking(),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
