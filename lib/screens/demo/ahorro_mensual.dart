import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

// ignore: camel_case_types
class Ahorro_Mensual extends StatefulWidget {
  const Ahorro_Mensual({Key? key}) : super(key: key);

  static const ahorrosColor = Color.fromARGB(255, 91, 4, 118);
  static const pagosColor = Color.fromARGB(255, 3, 3, 245);

  @override
  State<Ahorro_Mensual> createState() => _Ahorro_MensualState();
}

// ignore: camel_case_types
class _Ahorro_MensualState extends State<Ahorro_Mensual> {
  int touchedIndex = -1;
  BarChartGroupData generateGroupData(int x, double pagos, double ahorros) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barsSpace: 20,
      barRods: [
        BarChartRodData(
            fromY: 0,
            toY: pagos,
            color: Ahorro_Mensual.pagosColor,
            width: 50,
            borderRadius: BorderRadius.zero),
        BarChartRodData(
            fromY: pagos,
            toY: ahorros + pagos,
            color: Ahorro_Mensual.ahorrosColor,
            width: 50,
            borderRadius: BorderRadius.zero),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.black,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = "Ene";
        break;
      case 1:
        text = "Feb";
        break;
      case 2:
        text = "Mar";
        break;
      case 3:
        text = "Abr";
        break;
      case 4:
        text = "May";
        break;
      case 5:
        text = "Jun";
        break;
      case 6:
        text = "Jul";
        break;
      case 7:
        text = "Ago";
        break;
      case 8:
        text = "Sep";
        break;
      case 9:
        text = "Oct";
        break;
      case 10:
        text = "Nov";
        break;
      case 11:
        text = "Dic";
        break;
      default:
        text = "";
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.black,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = "91%";
        break;
      case 1:
        text = "92%";
        break;
      case 2:
        text = "93%";
        break;
      case 3:
        text = "94%";
        break;
      case 4:
        text = "95%";
        break;
      case 5:
        text = "96%";
        break;
      case 6:
        text = "97%";
        break;
      case 7:
        text = "98%";
        break;
      case 8:
        text = "99%";
        break;
      case 9:
        text = "100%";
        break;
      default:
        text = "";
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ahorro Mensual'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(children: <Widget>[
          const SizedBox(
            height: 28,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Indicator(
                color: Ahorro_Mensual.pagosColor,
                text: '% de Pago con Arux',
                isSquare: false,
                size: 18,
                textColor: Colors.black,
              ),
              Indicator(
                  color: Ahorro_Mensual.ahorrosColor,
                  text: 'Ahorro',
                  isSquare: false,
                  size: 16,
                  textColor: Colors.black),
            ],
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1.6,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 80, 30, 20),
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.center,
                    titlesData: FlTitlesData(
                      leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                              showTitles: true,
                              interval: 1,
                              reservedSize: 60,
                              getTitlesWidget: leftTitles)),
                      rightTitles: AxisTitles(),
                      topTitles: AxisTitles(),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: bottomTitles,
                          reservedSize: 30,
                        ),
                      ),
                    ),
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
                                ace = '94.7';
                                rec = '2,048,608.44';
                                break;
                              case 1:
                                ace = '96.3';
                                rec = '993,100.61';
                                break;
                              case 2:
                                ace = '95.2';
                                rec = '1,316,385.80';
                                break;
                              case 3:
                                ace = '95';
                                rec = '1,446,095.98';
                                break;
                              case 4:
                                ace = '94.9';
                                rec = '1,111,649.36';
                                break;
                              case 5:
                                ace = '95.3';
                                rec = '750,111.40';
                                break;
                              case 6:
                                ace = '94.9';
                                rec = '738,728.40';
                                break;
                              case 7:
                                ace = '96';
                                rec = '511,079.92';
                                break;
                              case 8:
                                ace = '95.6';
                                rec = '490,508.24';
                                break;
                              case 9:
                                ace = '94.7';
                                rec = '778,260.69';
                                break;
                              case 10:
                                ace = '94.5';
                                rec = '446,308.77';
                                break;
                              case 11:
                                ace = '95.7';
                                rec = '523,369.13';
                                break;
                              default:
                                throw Error();
                            }
                            return BarTooltipItem(
                              '$ace%\n',
                              const TextStyle(
                                color: Ahorro_Mensual.pagosColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\$$rec',
                                  style: const TextStyle(
                                    color: Ahorro_Mensual.ahorrosColor,
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
                    borderData: FlBorderData(show: true),
                    gridData: FlGridData(
                        show: true,
                        drawHorizontalLine: true,
                        drawVerticalLine: false),
                    barGroups: [
                      generateGroupData(0, 3.7, 5.3),
                      generateGroupData(1, 5.3, 3.7),
                      generateGroupData(2, 4.2, 4.8),
                      generateGroupData(3, 3.9, 5.1),
                      generateGroupData(4, 3.8, 5.2),
                      generateGroupData(5, 4, 5),
                      generateGroupData(6, 3.9, 5.1),
                      generateGroupData(7, 5, 4),
                      generateGroupData(8, 4.5, 4.5),
                      generateGroupData(9, 3.6, 5.4),
                      generateGroupData(10, 3.5, 5.5),
                      generateGroupData(11, 4, 5),
                    ],
                    maxY: 9,
                  ),
                ),
              ),
            ),
          ),
        ])));
  }
}
