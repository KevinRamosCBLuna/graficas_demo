// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
//import 'dart:math';
//import 'package:charts_flutter/flutter.dart' as charts;
import 'package:fl_chart/fl_chart.dart';
import 'package:graficas_demo/models/qt/Get_tablero_ahorro_beneficio_qt.dart';
import 'package:supabase/supabase.dart';

class PerdidasAhorroBeneficio extends StatelessWidget {
  const PerdidasAhorroBeneficio({Key? key}) : super(key: key);

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

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Colors.black, fontSize: 15);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Falta de Fondos';
        break;
      case 1:
        text = 'NC no recibidas';
        break;
      case 2:
        text = 'Adeudos de NC';
        break;
      case 3:
        text = 'Propuestas rechazadas';
        break;
      case 4:
        text = 'Propuestas sin respuesta';
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
    //gettabla();
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        width: 850,
        height: 286,
        child: AspectRatio(
            aspectRatio: 1.66,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceEvenly,
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
                        interval: 200000,
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
                maxY: 1000000,
                barGroups: getData(),
              ),
            )),
      ),
    );
  }

  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 937856.12,
              color: const Color.fromRGBO(0, 199, 116, 1),
              rodStackItems: [
                BarChartRodStackItem(
                  0,
                  937856.12,
                  const Color.fromRGBO(0, 199, 116, 1),
                ),
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
              toY: 380000,
              color: const Color.fromRGBO(0, 199, 116, 1),
              rodStackItems: [
                BarChartRodStackItem(
                  0,
                  380000,
                  const Color.fromRGBO(0, 199, 116, 1),
                ),
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
              toY: 970000,
              color: const Color.fromRGBO(0, 199, 116, 1),
              rodStackItems: [
                BarChartRodStackItem(
                  0,
                  970000,
                  const Color.fromRGBO(0, 199, 116, 1),
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 210000,
              color: const Color.fromRGBO(0, 199, 116, 1),
              rodStackItems: [
                BarChartRodStackItem(
                  0,
                  210000,
                  const Color.fromRGBO(0, 199, 116, 1),
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              width: 50,
              toY: 180000,
              color: const Color.fromRGBO(0, 199, 116, 1),
              rodStackItems: [
                BarChartRodStackItem(
                  0,
                  180000,
                  const Color.fromRGBO(0, 199, 116, 1),
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }
}
