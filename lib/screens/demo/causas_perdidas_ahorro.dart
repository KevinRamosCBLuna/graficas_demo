import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

// ignore: camel_case_types
class Causas_Perdidas_Ahorro extends StatelessWidget {
  const Causas_Perdidas_Ahorro({Key? key}) : super(key: key);

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Push: Pago-NC';
        break;
      case 1:
        text = 'Pull: Pago-N';
        break;
      case 2:
        text = 'Pull: Nc-Pago';
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
          title: const Text('Causas de Perdidas de Ahorro'),
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
                color: Colors.pink,
                text: 'Push: Pago-NC\n Sin Respuesta ',
                isSquare: false,
                size: 18,
                textColor: Colors.black,
              ),
              Indicator(
                  color: Color.fromARGB(255, 236, 64, 122),
                  text: 'Push: Pago-NC\nRechazadas',
                  isSquare: false,
                  size: 16,
                  textColor: Colors.black),
              Indicator(
                  color: Color.fromARGB(255, 240, 98, 146),
                  text: 'Push: Pago-NC\nAdeudo de NC',
                  isSquare: false,
                  size: 16,
                  textColor: Colors.black),
              Indicator(
                  color: Colors.blue,
                  text: 'Pull: Pago-N\nAdeudo de NC',
                  isSquare: false,
                  size: 16,
                  textColor: Colors.black),
              Indicator(
                  color: Colors.green,
                  text: 'Pull: NC-Pago\nNC no recibidas',
                  isSquare: false,
                  size: 16,
                  textColor: Colors.black),
            ],
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1.66,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 60, 30, 20),
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      barTouchData: BarTouchData(
                          handleBuiltInTouches: true,
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
                              interval: 1,
                              getTitlesWidget: bottomTitles),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                              showTitles: true,
                              interval: 80000,
                              reservedSize: 100,
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
                      groupsSpace: 75,
                      maxY: 480000,
                      barGroups: getData(),
                    ),
                  )),
            ),
          )
        ])));
  }

  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 302689,
              color: Colors.pink,
              rodStackItems: [
                BarChartRodStackItem(0, 302689, Colors.pink),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              width: 50,
              toY: 407607,
              color: const Color.fromARGB(255, 236, 64, 122),
              rodStackItems: [
                BarChartRodStackItem(
                    0, 407607, const Color.fromARGB(255, 236, 64, 122)),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
            width: 50,
            toY: 381442,
            color: const Color.fromARGB(255, 240, 98, 146),
            rodStackItems: [
              BarChartRodStackItem(
                  0, 381442, const Color.fromARGB(255, 240, 98, 146)),
            ],
            borderRadius: const BorderRadius.all(Radius.zero),
          )
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 228145,
              color: Colors.blue,
              rodStackItems: [
                BarChartRodStackItem(0, 228145, Colors.blue),
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
              toY: 202479,
              color: Colors.green,
              rodStackItems: [
                BarChartRodStackItem(0, 202479, Colors.green),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }
}
