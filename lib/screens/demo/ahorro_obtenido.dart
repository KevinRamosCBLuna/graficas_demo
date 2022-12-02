import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

class AhorroObtenido extends StatefulWidget {
  const AhorroObtenido({Key? key}) : super(key: key);

  @override
  State<AhorroObtenido> createState() => _AhorroObtenidoState();
}

class _AhorroObtenidoState extends State<AhorroObtenido> {
  late double touchedValue;

  @override
  void initState() {
    touchedValue = -1;
    super.initState();
  }

  LineChartBarData ganancias() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 800000),
        FlSpot(1, 600000),
        FlSpot(2, 630000),
        FlSpot(3, 1000000),
        FlSpot(4, 630000),
        FlSpot(5, 780000),
        FlSpot(6, 750000),
        FlSpot(7, 560000),
        FlSpot(8, 530000),
        FlSpot(9, 800000),
        FlSpot(10, 560000),
        FlSpot(11, 570000),
      ],
      isCurved: false,
      barWidth: 2,
      color: Colors.pinkAccent,
      dotData: FlDotData(
        show: true,
      ),
    );
  }

  LineChartBarData pullpagoNC() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 230000),
        FlSpot(1, 200000),
        FlSpot(2, 130000),
        FlSpot(3, 460000),
        FlSpot(4, 200000),
        FlSpot(5, 460000),
        FlSpot(6, 380000),
        FlSpot(7, 370000),
        FlSpot(8, 350000),
        FlSpot(9, 400000),
        FlSpot(10, 180000),
        FlSpot(11, 190000),
      ],
      isCurved: false,
      barWidth: 2,
      color: const Color.fromARGB(255, 11, 6, 108),
      dotData: FlDotData(
        show: true,
      ),
    );
  }

  LineChartBarData pullNCPago() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 220000),
        FlSpot(1, 30000),
        FlSpot(2, 160000),
        FlSpot(3, 160000),
        FlSpot(4, 100000),
        FlSpot(5, 170000),
        FlSpot(6, 165000),
        FlSpot(7, 160000),
        FlSpot(8, 175000),
        FlSpot(9, 400000),
        FlSpot(10, 20000),
        FlSpot(11, 30000),
      ],
      isCurved: false,
      barWidth: 2,
      color: const Color.fromARGB(255, 234, 0, 255),
      dotData: FlDotData(
        show: true,
      ),
    );
  }

  LineChartBarData pushPagoNC() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 225000),
        FlSpot(1, 400000),
        FlSpot(2, 430000),
        FlSpot(3, 400000),
        FlSpot(4, 390000),
        FlSpot(5, 150000),
        FlSpot(6, 380000),
        FlSpot(7, 190000),
        FlSpot(8, 175000),
        FlSpot(9, 400000),
        FlSpot(10, 350000),
        FlSpot(11, 360000),
      ],
      isCurved: false,
      barWidth: 2,
      color: Colors.deepOrange,
      dotData: FlDotData(
        show: true,
      ),
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

  Widget bottomTitleWidget(double value, TitleMeta meta) {
    final isTouched = value == touchedValue;
    final style = TextStyle(
      fontSize: 15,
      fontWeight: isTouched ? FontWeight.bold : FontWeight.normal,
      color: isTouched ? Colors.blue : Colors.black,
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
        return Container();
    }

    return SideTitleWidget(
      space: 4,
      axisSide: meta.axisSide,
      child: Text(
        text,
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ahorro Obtenido'),
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
                  color: Colors.pinkAccent,
                  text: 'Ganancias',
                  isSquare: false,
                  size: 18,
                  textColor: Colors.black,
                ),
                Indicator(
                    color: Color.fromARGB(255, 11, 6, 108),
                    text: 'Pull: Pago-NC',
                    isSquare: false,
                    size: 16,
                    textColor: Colors.black),
                Indicator(
                    color: Color.fromARGB(255, 234, 0, 255),
                    text: 'Pull: Nc-Pago',
                    isSquare: false,
                    size: 18,
                    textColor: Colors.black),
                Indicator(
                    color: Colors.deepOrange,
                    text: 'Push: Pago-NC',
                    isSquare: false,
                    size: 18,
                    textColor: Colors.black),
              ],
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1.66,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 60, 30, 40),
                  child: LineChart(
                    LineChartData(
                      lineTouchData: LineTouchData(
                          enabled: true,
                          /*//Marcador al tocar el punto
                          getTouchedSpotIndicator: (LineChartBarData barData,
                              List<int> spotIndexes) {
                            return spotIndexes.map((spotIndex) {
                              return TouchedSpotIndicatorData(
                                FlLine(color: Colors.blue, strokeWidth: 4),
                                FlDotData(
                                  getDotPainter:
                                      (spot, percent, barData, index) {
                                    return FlDotCirclePainter(
                                        radius: 8,
                                        color: Colors.white,
                                        strokeWidth: 5,
                                        strokeColor: Colors.blue);
                                  },
                                ),
                              );
                            }).toList();
                          },*/
                          //Cuadro con info de la grafica
                          touchTooltipData: LineTouchTooltipData(
                            tooltipBgColor:
                                const Color.fromARGB(255, 204, 204, 204),
                            /*getTooltipItems:
                                  (List<LineBarSpot> touchedBarSpots) {
                                return touchedBarSpots.map((barSpot) {
                                  final flSpot = barSpot;
                                  return LineTooltipItem(
                                    '\$ ${flSpot.y.toString()} \n',
                                    const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                }).toList();
                              }*/
                          ),
                          touchCallback: (FlTouchEvent event, lineTouch) {
                            if (!event.isInterestedForInteractions ||
                                lineTouch == null ||
                                lineTouch.lineBarSpots == null) {
                              setState(() {
                                touchedValue = -1;
                              });
                              return;
                            }
                            final value = lineTouch.lineBarSpots![0].x;
                            setState(() {
                              touchedValue = value;
                            });
                          }),
                      lineBarsData: [
                        ganancias(),
                        pullpagoNC(),
                        pullNCPago(),
                        pushPagoNC()
                      ],
                      minY: 0,
                      maxY: 1200000,
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            getTitlesWidget: bottomTitleWidget,
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: leftTitleWidgets,
                            interval: 200000,
                            reservedSize: 120,
                          ),
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
                        drawVerticalLine: false,
                        getDrawingHorizontalLine: (value) => FlLine(
                          color: const Color(0xffe7e8ec),
                          strokeWidth: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
