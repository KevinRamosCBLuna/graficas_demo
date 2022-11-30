// ignore_for_file: avoid_print

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/models/qt/Get_tablero_ahorro_beneficio_qt.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:supabase/supabase.dart';
import 'dart:convert';

class AhorroBeneficio extends StatefulWidget {
  const AhorroBeneficio({Key? key}) : super(key: key);

  @override
  State<AhorroBeneficio> createState() => _AhorroBeneficioState();
}

class _AhorroBeneficioState extends State<AhorroBeneficio> {
  Future<void> gettabla() async {
    String url = "http://supabase.cbluna-dev.com:8000";
    String key =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJhbm9uIiwKICAgICJpc3MiOiAic3VwYWJhc2UiLAogICAgImlhdCI6IDE2NTc2OTU2MDAsCiAgICAiZXhwIjogMTgxNTQ2MjAwMAp9.8h6s6K2rRn20SOc7robvygAWNhZsSWD4xFRdIZMyYVI";

    final client = SupabaseClient(url, key);
    dynamic response = await client.rpc('get_tablero_ahorro_beneficio',
        params: {'fechaini': '2022-07-01', 'fechafin': '2022-08-12'}).execute();

    print("-----Error: ${response.error}");

    response = jsonEncode(response);

    print("-----Response: ");
    print(response.toString());

    GetTableroAhorroBeneficioQt objecto =
        getTableroAhorroBeneficioQtFromMap(response);
    print(objecto.data[0].proveedor);
  }

  late double touchedValue;

  @override
  void initState() {
    touchedValue = -1;
    super.initState();
  }

  LineChartBarData facturacion() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 1700000),
        FlSpot(1, 1700000),
        FlSpot(2, 1700000),
        FlSpot(3, 1700000),
        FlSpot(4, 1700000),
        FlSpot(5, 1700000),
        FlSpot(6, 1700000),
        FlSpot(7, 1700000),
        FlSpot(8, 1700000),
        FlSpot(9, 1700000),
        FlSpot(10, 1700000),
        FlSpot(11, 1700000),
      ],
      isCurved: false,
      barWidth: 5,
      color: const Color.fromRGBO(28, 185, 99, 1),
      dotData: FlDotData(
        show: true,
      ),
    );
  }

  LineChartBarData ahorro() {
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
      barWidth: 5,
      color: const Color.fromRGBO(47, 72, 71, 1),
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
      barWidth: 5,
      color: const Color.fromRGBO(69, 214, 154, 1),
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
      barWidth: 5,
      color: const Color.fromRGBO(68, 84, 106, 1),
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
      barWidth: 5,
      color: const Color.fromRGBO(138, 138, 138, 1),
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

  TextStyle estilo() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
    gettabla();
    return SizedBox(
      width: 850,
      height: 313,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Center(
              child: Text(
            'Ahorro / Beneficio',
            textAlign: TextAlign.center,
            style: estilo(),
          )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Indicator(
              color: Color.fromRGBO(28, 185, 99, 1),
              text: 'Facturación Normal',
              isSquare: false,
              size: 18,
              textColor: Colors.black,
            ),
            Indicator(
              color: Color.fromRGBO(47, 72, 71, 1),
              text: 'Ahorro',
              isSquare: false,
              size: 18,
              textColor: Colors.black,
            ),
            Indicator(
                color: Color.fromRGBO(69, 214, 154, 1),
                text: 'Ahorro Pull NP',
                isSquare: false,
                size: 16,
                textColor: Colors.black),
            Indicator(
                color: Color.fromRGBO(68, 84, 106, 1),
                text: 'Ahorro Pull PN',
                isSquare: false,
                size: 18,
                textColor: Colors.black),
            Indicator(
                color: Color.fromRGBO(138, 138, 138, 1),
                text: 'Ahorro Push NP',
                isSquare: false,
                size: 18,
                textColor: Colors.black),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            width: 850,
            height: 226,
            child: AspectRatio(
              aspectRatio: 1.66,
              child: LineChart(
                LineChartData(
                  lineTouchData: LineTouchData(
                      enabled: true,
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
                    facturacion(),
                    ahorro(),
                    pullpagoNC(),
                    pullNCPago(),
                    pushPagoNC()
                  ],
                  minY: 0,
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
    );
  }
}
