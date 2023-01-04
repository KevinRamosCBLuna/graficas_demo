import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/theme/app_theme.dart';

class TrentCustomerRepSalesByServices extends StatefulWidget {
  const TrentCustomerRepSalesByServices({Key? key}) : super(key: key);

  @override
  State<TrentCustomerRepSalesByServices> createState() => _TrendServiceState();
}

class _TrendServiceState extends State<TrentCustomerRepSalesByServices> {
  List<double> asaelList = [0, 3, 4, 0, 0, 0, 0],
      jillList = [2, 1, 0, 0, 0, 0, 0],
      rosaliaList = [1, 3, 0, 0, 0, 0, 0],
      rubyList = [3, 2, 0, 0, 0, 0, 0],
      shirleList = [8, 4, 0, 0, 0, 0, 0],
      steveList = [4, 0, 0, 0, 0, 0, 0],
      asaelList2 = [0, 1, 2, 3, 0, 0, 0],
      jillList2 = [4, 2, 1, 0, 0, 0, 1],
      rosaliaList2 = [0, 0, 1, 2, 3, 0, 0],
      rubyList2 = [1, 1, 0, 0, 0, 4, 1],
      shirleList2 = [0, 1, 0, 0, 4, 1, 0],
      steveList2 = [2, 0, 0, 0, 2, 0, 6],
      asaelList3 = [0, 0, 1, 2, 4, 0, 0],
      jillList3 = [2, 1, 0, 0, 0, 3, 1],
      rosaliaList3 = [1, 3, 0, 1, 0, 2, 0],
      rubyList3 = [3, 2, 0, 0, 4, 1, 0],
      shirleList3 = [2, 4, 0, 0, 0, 0, 1],
      steveList3 = [1, 0, 4, 0, 0, 6, 0];
  Color c1 = Colors.blue, c2 = Colors.cyan, c3 = Colors.green, c4 = Colors.yellow, c5 = Colors.deepOrange, c6 = Colors.pink, c7 = Colors.purple;
  int touchedIndex = -1;
  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: 5,
        barRods: [
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: asaelList[0] + asaelList[1] + asaelList[2] + asaelList[3] + asaelList[4] + asaelList[5] + asaelList[6],
            rodStackItems: [
              BarChartRodStackItem(0, asaelList[0], c1),
              BarChartRodStackItem(asaelList[0], asaelList[0] + asaelList[1], c2),
              BarChartRodStackItem(asaelList[0] + asaelList[1], asaelList[0] + asaelList[1] + asaelList[2], c3),
              BarChartRodStackItem(asaelList[0] + asaelList[1] + asaelList[2], asaelList[0] + asaelList[1] + asaelList[2] + asaelList[3], c4),
              BarChartRodStackItem(asaelList[0] + asaelList[1] + asaelList[2] + asaelList[3], asaelList[0] + asaelList[1] + asaelList[2] + asaelList[3] + asaelList[4], c5),
              BarChartRodStackItem(
                  asaelList[0] + asaelList[1] + asaelList[2] + asaelList[3] + asaelList[4], asaelList[0] + asaelList[1] + asaelList[2] + asaelList[3] + asaelList[4] + asaelList[5], c6),
              BarChartRodStackItem(asaelList[0] + asaelList[1] + asaelList[2] + asaelList[3] + asaelList[4] + asaelList[5],
                  asaelList[0] + asaelList[1] + asaelList[2] + asaelList[3] + asaelList[4] + asaelList[5] + asaelList[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: jillList[0] + jillList[1] + jillList[2] + jillList[3] + jillList[4] + jillList[5] + jillList[6],
            rodStackItems: [
              BarChartRodStackItem(0, jillList[0], c1),
              BarChartRodStackItem(jillList[0], jillList[0] + jillList[1], c2),
              BarChartRodStackItem(jillList[0] + jillList[1], jillList[0] + jillList[1] + jillList[2], c3),
              BarChartRodStackItem(jillList[0] + jillList[1] + jillList[2], jillList[0] + jillList[1] + jillList[2] + jillList[3], c4),
              BarChartRodStackItem(jillList[0] + jillList[1] + jillList[2] + jillList[3], jillList[0] + jillList[1] + jillList[2] + jillList[3] + jillList[4], c5),
              BarChartRodStackItem(jillList[0] + jillList[1] + jillList[2] + jillList[3] + jillList[4], jillList[0] + jillList[1] + jillList[2] + jillList[3] + jillList[4] + jillList[5], c6),
              BarChartRodStackItem(jillList[0] + jillList[1] + jillList[2] + jillList[3] + jillList[4] + jillList[5],
                  jillList[0] + jillList[1] + jillList[2] + jillList[3] + jillList[4] + jillList[5] + jillList[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: rosaliaList[0] + rosaliaList[1] + rosaliaList[2] + rosaliaList[3] + rosaliaList[4] + rosaliaList[5] + rosaliaList[6],
            rodStackItems: [
              BarChartRodStackItem(0, rosaliaList[0], c1),
              BarChartRodStackItem(rosaliaList[0], rosaliaList[0] + rosaliaList[1], c2),
              BarChartRodStackItem(rosaliaList[0] + rosaliaList[1], rosaliaList[0] + rosaliaList[1] + rosaliaList[2], c3),
              BarChartRodStackItem(rosaliaList[0] + rosaliaList[1] + rosaliaList[2], rosaliaList[0] + rosaliaList[1] + rosaliaList[2] + rosaliaList[3], c4),
              BarChartRodStackItem(rosaliaList[0] + rosaliaList[1] + rosaliaList[2] + rosaliaList[3], rosaliaList[0] + rosaliaList[1] + rosaliaList[2] + rosaliaList[3] + rosaliaList[4], c5),
              BarChartRodStackItem(rosaliaList[0] + rosaliaList[1] + rosaliaList[2] + rosaliaList[3] + rosaliaList[4],
                  rosaliaList[0] + rosaliaList[1] + rosaliaList[2] + rosaliaList[3] + rosaliaList[4] + rosaliaList[5], c6),
              BarChartRodStackItem(rosaliaList[0] + rosaliaList[1] + rosaliaList[2] + rosaliaList[3] + rosaliaList[4] + rosaliaList[5],
                  rosaliaList[0] + rosaliaList[1] + rosaliaList[2] + rosaliaList[3] + rosaliaList[4] + rosaliaList[5] + rosaliaList[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: rubyList[0] + rubyList[1] + rubyList[2] + rubyList[3] + rubyList[4] + rubyList[5] + rubyList[6],
            rodStackItems: [
              BarChartRodStackItem(0, rubyList[0], c1),
              BarChartRodStackItem(rubyList[0], rubyList[0] + rubyList[1], c2),
              BarChartRodStackItem(rubyList[0] + rubyList[1], rubyList[0] + rubyList[1] + rubyList[2], c3),
              BarChartRodStackItem(rubyList[0] + rubyList[1] + rubyList[2], rubyList[0] + rubyList[1] + rubyList[2] + rubyList[3], c4),
              BarChartRodStackItem(rubyList[0] + rubyList[1] + rubyList[2] + rubyList[3], rubyList[0] + rubyList[1] + rubyList[2] + rubyList[3] + rubyList[4], c5),
              BarChartRodStackItem(rubyList[0] + rubyList[1] + rubyList[2] + rubyList[3] + rubyList[4], rubyList[0] + rubyList[1] + rubyList[2] + rubyList[3] + rubyList[4] + rubyList[5], c6),
              BarChartRodStackItem(rubyList[0] + rubyList[1] + rubyList[2] + rubyList[3] + rubyList[4] + rubyList[5],
                  rubyList[0] + rubyList[1] + rubyList[2] + rubyList[3] + rubyList[4] + rubyList[5] + rubyList[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: shirleList[0] + shirleList[1] + shirleList[2] + shirleList[3] + shirleList[4] + shirleList[5] + shirleList[6],
            rodStackItems: [
              BarChartRodStackItem(0, shirleList[0], c1),
              BarChartRodStackItem(shirleList[0], shirleList[0] + shirleList[1], c2),
              BarChartRodStackItem(shirleList[0] + shirleList[1], shirleList[0] + shirleList[1] + shirleList[2], c3),
              BarChartRodStackItem(shirleList[0] + shirleList[1] + shirleList[2], shirleList[0] + shirleList[1] + shirleList[2] + shirleList[3], c4),
              BarChartRodStackItem(shirleList[0] + shirleList[1] + shirleList[2] + shirleList[3], shirleList[0] + shirleList[1] + shirleList[2] + shirleList[3] + shirleList[4], c5),
              BarChartRodStackItem(
                  shirleList[0] + shirleList[1] + shirleList[2] + shirleList[3] + shirleList[4], shirleList[0] + shirleList[1] + shirleList[2] + shirleList[3] + shirleList[4] + shirleList[5], c6),
              BarChartRodStackItem(shirleList[0] + shirleList[1] + shirleList[2] + shirleList[3] + shirleList[4] + shirleList[5],
                  shirleList[0] + shirleList[1] + shirleList[2] + shirleList[3] + shirleList[4] + shirleList[5] + shirleList[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: steveList[0] + steveList[1] + steveList[2] + steveList[3] + steveList[4] + steveList[5] + steveList[6],
            rodStackItems: [
              BarChartRodStackItem(0, steveList[0], c1),
              BarChartRodStackItem(steveList[0], steveList[0] + steveList[1], c2),
              BarChartRodStackItem(steveList[0] + steveList[1], steveList[0] + steveList[1] + steveList[2], c3),
              BarChartRodStackItem(steveList[0] + steveList[1] + steveList[2], steveList[0] + steveList[1] + steveList[2] + steveList[3], c4),
              BarChartRodStackItem(steveList[0] + steveList[1] + steveList[2] + steveList[3], steveList[0] + steveList[1] + steveList[2] + steveList[3] + steveList[4], c5),
              BarChartRodStackItem(
                  steveList[0] + steveList[1] + steveList[2] + steveList[3] + steveList[4], steveList[0] + steveList[1] + steveList[2] + steveList[3] + steveList[4] + steveList[5], c6),
              BarChartRodStackItem(steveList[0] + steveList[1] + steveList[2] + steveList[3] + steveList[4] + steveList[5],
                  steveList[0] + steveList[1] + steveList[2] + steveList[3] + steveList[4] + steveList[5] + shirleList[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 5,
        barRods: [
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: asaelList2[0] + asaelList2[1] + asaelList2[2] + asaelList2[3] + asaelList2[4] + asaelList2[5] + asaelList2[6],
            rodStackItems: [
              BarChartRodStackItem(0, asaelList2[0], c1),
              BarChartRodStackItem(asaelList2[0], asaelList2[0] + asaelList2[1], c2),
              BarChartRodStackItem(asaelList2[0] + asaelList2[1], asaelList2[0] + asaelList2[1] + asaelList2[2], c3),
              BarChartRodStackItem(asaelList2[0] + asaelList2[1] + asaelList2[2], asaelList2[0] + asaelList2[1] + asaelList2[2] + asaelList2[3], c4),
              BarChartRodStackItem(asaelList2[0] + asaelList2[1] + asaelList2[2] + asaelList2[3], asaelList2[0] + asaelList2[1] + asaelList2[2] + asaelList2[3] + asaelList2[4], c5),
              BarChartRodStackItem(
                  asaelList2[0] + asaelList2[1] + asaelList2[2] + asaelList2[3] + asaelList2[4], asaelList2[0] + asaelList2[1] + asaelList2[2] + asaelList2[3] + asaelList2[4] + asaelList2[5], c6),
              BarChartRodStackItem(asaelList2[0] + asaelList2[1] + asaelList2[2] + asaelList2[3] + asaelList2[4] + asaelList2[5],
                  asaelList2[0] + asaelList2[1] + asaelList2[2] + asaelList2[3] + asaelList2[4] + asaelList2[5] + asaelList2[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: jillList2[0] + jillList2[1] + jillList2[2] + jillList2[3] + jillList2[4] + jillList2[5] + jillList2[6],
            rodStackItems: [
              BarChartRodStackItem(0, jillList2[0], c1),
              BarChartRodStackItem(jillList2[0], jillList2[0] + jillList2[1], c2),
              BarChartRodStackItem(jillList2[0] + jillList2[1], jillList2[0] + jillList2[1] + jillList2[2], c3),
              BarChartRodStackItem(jillList2[0] + jillList2[1] + jillList2[2], jillList2[0] + jillList2[1] + jillList2[2] + jillList2[3], c4),
              BarChartRodStackItem(jillList2[0] + jillList2[1] + jillList2[2] + jillList2[3], jillList2[0] + jillList2[1] + jillList2[2] + jillList2[3] + jillList2[4], c5),
              BarChartRodStackItem(
                  jillList2[0] + jillList2[1] + jillList2[2] + jillList2[3] + jillList2[4], jillList2[0] + jillList2[1] + jillList2[2] + jillList2[3] + jillList2[4] + jillList2[5], c6),
              BarChartRodStackItem(jillList2[0] + jillList2[1] + jillList2[2] + jillList2[3] + jillList2[4] + jillList2[5],
                  jillList2[0] + jillList2[1] + jillList2[2] + jillList2[3] + jillList2[4] + jillList2[5] + jillList2[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: rosaliaList2[0] + rosaliaList2[1] + rosaliaList2[2] + rosaliaList2[3] + rosaliaList2[4] + rosaliaList2[5] + rosaliaList2[6],
            rodStackItems: [
              BarChartRodStackItem(0, rosaliaList2[0], c1),
              BarChartRodStackItem(rosaliaList2[0], rosaliaList2[0] + rosaliaList2[1], c2),
              BarChartRodStackItem(rosaliaList2[0] + rosaliaList2[1], rosaliaList2[0] + rosaliaList2[1] + rosaliaList2[2], c3),
              BarChartRodStackItem(rosaliaList2[0] + rosaliaList2[1] + rosaliaList2[2], rosaliaList2[0] + rosaliaList2[1] + rosaliaList2[2] + rosaliaList2[3], c4),
              BarChartRodStackItem(rosaliaList2[0] + rosaliaList2[1] + rosaliaList2[2] + rosaliaList2[3], rosaliaList2[0] + rosaliaList2[1] + rosaliaList2[2] + rosaliaList2[3] + rosaliaList2[4], c5),
              BarChartRodStackItem(rosaliaList2[0] + rosaliaList2[1] + rosaliaList2[2] + rosaliaList2[3] + rosaliaList2[4],
                  rosaliaList2[0] + rosaliaList2[1] + rosaliaList2[2] + rosaliaList2[3] + rosaliaList2[4] + rosaliaList2[5], c6),
              BarChartRodStackItem(rosaliaList2[0] + rosaliaList2[1] + rosaliaList2[2] + rosaliaList2[3] + rosaliaList2[4] + rosaliaList2[5],
                  rosaliaList2[0] + rosaliaList2[1] + rosaliaList2[2] + rosaliaList2[3] + rosaliaList2[4] + rosaliaList2[5] + rosaliaList2[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: rubyList2[0] + rubyList2[1] + rubyList2[2] + rubyList2[3] + rubyList2[4] + rubyList2[5] + rubyList2[6],
            rodStackItems: [
              BarChartRodStackItem(0, rubyList2[0], c1),
              BarChartRodStackItem(rubyList2[0], rubyList2[0] + rubyList2[1], c2),
              BarChartRodStackItem(rubyList2[0] + rubyList2[1], rubyList2[0] + rubyList2[1] + rubyList2[2], c3),
              BarChartRodStackItem(rubyList2[0] + rubyList2[1] + rubyList2[2], rubyList2[0] + rubyList2[1] + rubyList2[2] + rubyList2[3], c4),
              BarChartRodStackItem(rubyList2[0] + rubyList2[1] + rubyList2[2] + rubyList2[3], rubyList2[0] + rubyList2[1] + rubyList2[2] + rubyList2[3] + rubyList2[4], c5),
              BarChartRodStackItem(
                  rubyList2[0] + rubyList2[1] + rubyList2[2] + rubyList2[3] + rubyList2[4], rubyList2[0] + rubyList2[1] + rubyList2[2] + rubyList2[3] + rubyList2[4] + rubyList2[5], c6),
              BarChartRodStackItem(rubyList2[0] + rubyList2[1] + rubyList2[2] + rubyList2[3] + rubyList2[4] + rubyList2[5],
                  rubyList2[0] + rubyList2[1] + rubyList2[2] + rubyList2[3] + rubyList2[4] + rubyList2[5] + rubyList2[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: shirleList2[0] + shirleList2[1] + shirleList2[2] + shirleList2[3] + shirleList2[4] + shirleList2[5] + shirleList2[6],
            rodStackItems: [
              BarChartRodStackItem(0, shirleList2[0], c1),
              BarChartRodStackItem(shirleList2[0], shirleList2[0] + shirleList2[1], c2),
              BarChartRodStackItem(shirleList2[0] + shirleList2[1], shirleList2[0] + shirleList2[1] + shirleList2[2], c3),
              BarChartRodStackItem(shirleList2[0] + shirleList2[1] + shirleList2[2], shirleList2[0] + shirleList2[1] + shirleList2[2] + shirleList2[3], c4),
              BarChartRodStackItem(shirleList2[0] + shirleList2[1] + shirleList2[2] + shirleList2[3], shirleList2[0] + shirleList2[1] + shirleList2[2] + shirleList2[3] + shirleList2[4], c5),
              BarChartRodStackItem(shirleList2[0] + shirleList2[1] + shirleList2[2] + shirleList2[3] + shirleList2[4],
                  shirleList2[0] + shirleList2[1] + shirleList2[2] + shirleList2[3] + shirleList2[4] + shirleList2[5], c6),
              BarChartRodStackItem(shirleList2[0] + shirleList2[1] + shirleList2[2] + shirleList2[3] + shirleList2[4] + shirleList2[5],
                  shirleList2[0] + shirleList2[1] + shirleList2[2] + shirleList2[3] + shirleList2[4] + shirleList2[5] + shirleList2[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: steveList2[0] + steveList2[1] + steveList2[2] + steveList2[3] + steveList2[4] + steveList2[5] + steveList2[6],
            rodStackItems: [
              BarChartRodStackItem(0, steveList2[0], c1),
              BarChartRodStackItem(steveList2[0], steveList2[0] + steveList2[1], c2),
              BarChartRodStackItem(steveList2[0] + steveList2[1], steveList2[0] + steveList2[1] + steveList2[2], c3),
              BarChartRodStackItem(steveList2[0] + steveList2[1] + steveList2[2], steveList2[0] + steveList2[1] + steveList2[2] + steveList2[3], c4),
              BarChartRodStackItem(steveList2[0] + steveList2[1] + steveList2[2] + steveList2[3], steveList2[0] + steveList2[1] + steveList2[2] + steveList2[3] + steveList2[4], c5),
              BarChartRodStackItem(
                  steveList2[0] + steveList2[1] + steveList2[2] + steveList2[3] + steveList2[4], steveList2[0] + steveList2[1] + steveList2[2] + steveList2[3] + steveList2[4] + steveList2[5], c6),
              BarChartRodStackItem(steveList2[0] + steveList2[1] + steveList2[2] + steveList2[3] + steveList2[4] + steveList2[5],
                  steveList2[0] + steveList2[1] + steveList2[2] + steveList2[3] + steveList2[4] + steveList2[5] + steveList2[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 5,
        barRods: [
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: asaelList3[0] + asaelList3[1] + asaelList3[2] + asaelList3[3] + asaelList3[4] + asaelList3[5] + asaelList3[6],
            rodStackItems: [
              BarChartRodStackItem(0, asaelList3[0], c1),
              BarChartRodStackItem(asaelList3[0], asaelList3[0] + asaelList3[1], c2),
              BarChartRodStackItem(asaelList3[0] + asaelList3[1], asaelList3[0] + asaelList3[1] + asaelList3[2], c3),
              BarChartRodStackItem(asaelList3[0] + asaelList3[1] + asaelList3[2], asaelList3[0] + asaelList3[1] + asaelList3[2] + asaelList3[3], c4),
              BarChartRodStackItem(asaelList3[0] + asaelList3[1] + asaelList3[2] + asaelList3[3], asaelList3[0] + asaelList3[1] + asaelList3[2] + asaelList3[3] + asaelList3[4], c5),
              BarChartRodStackItem(
                  asaelList3[0] + asaelList3[1] + asaelList3[2] + asaelList3[3] + asaelList3[4], asaelList3[0] + asaelList3[1] + asaelList3[2] + asaelList3[3] + asaelList3[4] + asaelList3[5], c6),
              BarChartRodStackItem(asaelList3[0] + asaelList3[1] + asaelList3[2] + asaelList3[3] + asaelList3[4] + asaelList3[5],
                  asaelList3[0] + asaelList3[1] + asaelList3[2] + asaelList3[3] + asaelList3[4] + asaelList3[5] + asaelList3[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: jillList3[0] + jillList3[1] + jillList3[2] + jillList3[3] + jillList3[4] + jillList3[5] + jillList3[6],
            rodStackItems: [
              BarChartRodStackItem(0, jillList3[0], c1),
              BarChartRodStackItem(jillList3[0], jillList3[0] + jillList3[1], c2),
              BarChartRodStackItem(jillList3[0] + jillList3[1], jillList3[0] + jillList3[1] + jillList3[2], c3),
              BarChartRodStackItem(jillList3[0] + jillList3[1] + jillList3[2], jillList3[0] + jillList3[1] + jillList3[2] + jillList3[3], c4),
              BarChartRodStackItem(jillList3[0] + jillList3[1] + jillList3[2] + jillList3[3], jillList3[0] + jillList3[1] + jillList3[2] + jillList3[3] + jillList3[4], c5),
              BarChartRodStackItem(
                  jillList3[0] + jillList3[1] + jillList3[2] + jillList3[3] + jillList3[4], jillList3[0] + jillList3[1] + jillList3[2] + jillList3[3] + jillList3[4] + jillList3[5], c6),
              BarChartRodStackItem(jillList3[0] + jillList3[1] + jillList3[2] + jillList3[3] + jillList3[4] + jillList3[5],
                  jillList3[0] + jillList3[1] + jillList3[2] + jillList3[3] + jillList3[4] + jillList3[5] + jillList3[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: rosaliaList3[0] + rosaliaList3[1] + rosaliaList3[2] + rosaliaList3[3] + rosaliaList3[4] + rosaliaList3[5] + rosaliaList3[6],
            rodStackItems: [
              BarChartRodStackItem(0, rosaliaList3[0], c1),
              BarChartRodStackItem(rosaliaList3[0], rosaliaList3[0] + rosaliaList3[1], c2),
              BarChartRodStackItem(rosaliaList3[0] + rosaliaList3[1], rosaliaList3[0] + rosaliaList3[1] + rosaliaList3[2], c3),
              BarChartRodStackItem(rosaliaList3[0] + rosaliaList3[1] + rosaliaList3[2], rosaliaList3[0] + rosaliaList3[1] + rosaliaList3[2] + rosaliaList3[3], c4),
              BarChartRodStackItem(rosaliaList3[0] + rosaliaList3[1] + rosaliaList3[2] + rosaliaList3[3], rosaliaList3[0] + rosaliaList3[1] + rosaliaList3[2] + rosaliaList3[3] + rosaliaList3[4], c5),
              BarChartRodStackItem(rosaliaList3[0] + rosaliaList3[1] + rosaliaList3[2] + rosaliaList3[3] + rosaliaList3[4],
                  rosaliaList3[0] + rosaliaList3[1] + rosaliaList3[2] + rosaliaList3[3] + rosaliaList3[4] + rosaliaList3[5], c6),
              BarChartRodStackItem(rosaliaList3[0] + rosaliaList3[1] + rosaliaList3[2] + rosaliaList3[3] + rosaliaList3[4] + rosaliaList3[5],
                  rosaliaList3[0] + rosaliaList3[1] + rosaliaList3[2] + rosaliaList3[3] + rosaliaList3[4] + rosaliaList3[5] + rosaliaList3[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: rubyList3[0] + rubyList3[1] + rubyList3[2] + rubyList3[3] + rubyList3[4] + rubyList3[5] + rubyList3[6],
            rodStackItems: [
              BarChartRodStackItem(0, rubyList3[0], c1),
              BarChartRodStackItem(rubyList3[0], rubyList3[0] + rubyList3[1], c2),
              BarChartRodStackItem(rubyList3[0] + rubyList3[1], rubyList3[0] + rubyList3[1] + rubyList3[2], c3),
              BarChartRodStackItem(rubyList3[0] + rubyList3[1] + rubyList3[2], rubyList3[0] + rubyList3[1] + rubyList3[2] + rubyList3[3], c4),
              BarChartRodStackItem(rubyList3[0] + rubyList3[1] + rubyList3[2] + rubyList3[3], rubyList3[0] + rubyList3[1] + rubyList3[2] + rubyList3[3] + rubyList3[4], c5),
              BarChartRodStackItem(
                  rubyList3[0] + rubyList3[1] + rubyList3[2] + rubyList3[3] + rubyList3[4], rubyList3[0] + rubyList3[1] + rubyList3[2] + rubyList3[3] + rubyList3[4] + rubyList3[5], c6),
              BarChartRodStackItem(rubyList3[0] + rubyList3[1] + rubyList3[2] + rubyList3[3] + rubyList3[4] + rubyList3[5],
                  rubyList3[0] + rubyList3[1] + rubyList3[2] + rubyList3[3] + rubyList3[4] + rubyList3[5] + rubyList3[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: shirleList3[0] + shirleList3[1] + shirleList3[2] + shirleList3[3] + shirleList3[4] + shirleList3[5] + shirleList3[6],
            rodStackItems: [
              BarChartRodStackItem(0, shirleList3[0], c1),
              BarChartRodStackItem(shirleList3[0], shirleList3[0] + shirleList3[1], c2),
              BarChartRodStackItem(shirleList3[0] + shirleList3[1], shirleList3[0] + shirleList3[1] + shirleList3[2], c3),
              BarChartRodStackItem(shirleList3[0] + shirleList3[1] + shirleList3[2], shirleList3[0] + shirleList3[1] + shirleList3[2] + shirleList3[3], c4),
              BarChartRodStackItem(shirleList3[0] + shirleList3[1] + shirleList3[2] + shirleList3[3], shirleList3[0] + shirleList3[1] + shirleList3[2] + shirleList3[3] + shirleList3[4], c5),
              BarChartRodStackItem(shirleList3[0] + shirleList3[1] + shirleList3[2] + shirleList3[3] + shirleList3[4],
                  shirleList3[0] + shirleList3[1] + shirleList3[2] + shirleList3[3] + shirleList3[4] + shirleList3[5], c6),
              BarChartRodStackItem(shirleList3[0] + shirleList3[1] + shirleList3[2] + shirleList3[3] + shirleList3[4] + shirleList3[5],
                  shirleList3[0] + shirleList3[1] + shirleList3[2] + shirleList3[3] + shirleList3[4] + shirleList3[5] + shirleList3[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
          BarChartRodData(
            fromY: 0,
            width: 20,
            toY: steveList3[0] + steveList3[1] + steveList3[2] + steveList3[3] + steveList3[4] + steveList3[5] + steveList3[6],
            rodStackItems: [
              BarChartRodStackItem(0, steveList3[0], c1),
              BarChartRodStackItem(steveList3[0], steveList3[0] + steveList3[1], c2),
              BarChartRodStackItem(steveList3[0] + steveList3[1], steveList3[0] + steveList3[1] + steveList3[2], c3),
              BarChartRodStackItem(steveList3[0] + steveList3[1] + steveList3[2], steveList3[0] + steveList3[1] + steveList3[2] + steveList3[3], c4),
              BarChartRodStackItem(steveList3[0] + steveList3[1] + steveList3[2] + steveList3[3], steveList3[0] + steveList3[1] + steveList3[2] + steveList3[3] + steveList3[4], c5),
              BarChartRodStackItem(
                  steveList3[0] + steveList3[1] + steveList3[2] + steveList3[3] + steveList3[4], steveList3[0] + steveList3[1] + steveList3[2] + steveList3[3] + steveList3[4] + steveList3[5], c6),
              BarChartRodStackItem(steveList3[0] + steveList3[1] + steveList3[2] + steveList3[3] + steveList3[4] + steveList3[5],
                  steveList3[0] + steveList3[1] + steveList3[2] + steveList3[3] + steveList3[4] + steveList3[5] + steveList3[6], c7),
            ],
            borderRadius: BorderRadius.zero,
          ),
        ],
      ),
    ];
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 0:
        text = '50';
        break;
      case 1:
        text = '51';
        break;
      case 2:
        text = '52';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: AppTheme.primarStyle),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        '$value',
        style: AppTheme.primarStyle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        color: Colors.transparent,
        elevation: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: 800,
          height: 600,
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          decoration: BoxDecoration(
            color: AppTheme.secundarytext,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 1,
              color: AppTheme.primary,
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Service Trend',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Indicator(color: c1, text: '50 Min Gig (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                    Indicator(color: c2, text: '50 Super Gig(SUM)', isSquare: false, size: 16, textColor: Colors.black),
                    Indicator(color: c3, text: '50 Galactic Gig (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                    Indicator(color: c4, text: '50 tvg1 (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Indicator(color: c5, text: '50 TVG2 (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                    Indicator(color: c6, text: '50 TVG3 (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                    Indicator(color: c7, text: '50 Voice (SUM)', isSquare: false, size: 16, textColor: Colors.black),
                  ],
                ),
              ),
              SizedBox(
                width: 800,
                height: 350,
                child: BarChart(
                  BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      barTouchData: BarTouchData(
                        enabled: true,
                        touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor: const Color.fromARGB(255, 204, 204, 204),
                            getTooltipItem: (group, groupIndex, rod, rodIndex) {
                              String? n1;
                              TextStyle tooltipstyle = AppTheme.primarStyle;
                              if (group.x == 0) {
                                switch (rodIndex) {
                                  case 0:
                                    n1 = '${asaelList[0]}';
                                    //tooltipstyle = TextStyle(color: c1, fontSize: 16, fontWeight: FontWeight.bold);
                                    break;
                                  case 1:
                                    n1 = '${asaelList[1]}';
                                    //tooltipstyle = TextStyle(color: c2, fontSize: 16, fontWeight: FontWeight.bold);
                                    break;
                                  case 2:
                                    n1 = '${asaelList[2]}';
                                    // tooltipstyle = TextStyle(color: c3, fontSize: 16, fontWeight: FontWeight.bold);
                                    break;
                                  case 3:
                                    n1 = '${asaelList[3]}';
                                    // tooltipstyle = TextStyle(color: c4, fontSize: 16, fontWeight: FontWeight.bold);
                                    break;
                                  case 4:
                                    n1 = '${asaelList[4]}';
                                    // tooltipstyle = TextStyle(color: c5, fontSize: 16, fontWeight: FontWeight.bold);
                                    break;
                                  case 5:
                                    n1 = '${asaelList[5]}';
                                    // tooltipstyle = TextStyle(color: c6, fontSize: 16, fontWeight: FontWeight.bold);
                                    break;
                                  case 6:
                                    n1 = '${asaelList[6]}';
                                    // tooltipstyle = TextStyle(color: c7, fontSize: 16, fontWeight: FontWeight.bold);
                                    break;
                                  default:
                                    throw Error();
                                }
                              } else if (group.x == 1) {
                                switch (rodIndex) {
                                  case 0:
                                    n1 = '${jillList[0]}';
                                    break;
                                  case 1:
                                    n1 = '${jillList[1]}';
                                    break;
                                  case 2:
                                    n1 = '${jillList[2]}';
                                    break;
                                  case 3:
                                    n1 = '${jillList[3]}';
                                    break;
                                  case 4:
                                    n1 = '${jillList[4]}';
                                    break;
                                  case 5:
                                    n1 = '${jillList[5]}';
                                    break;
                                  case 6:
                                    n1 = '${jillList[6]}';
                                    break;
                                  default:
                                    throw Error();
                                }
                              } else if (group.x == 2) {
                                switch (rodIndex) {
                                  case 0:
                                    n1 = '${rosaliaList[0]}';
                                    break;
                                  case 1:
                                    n1 = '${rosaliaList[1]}';
                                    break;
                                  case 2:
                                    n1 = '${rosaliaList[2]}';
                                    break;
                                  case 3:
                                    n1 = '${rosaliaList[3]}';
                                    break;
                                  case 4:
                                    n1 = '${rosaliaList[4]}';
                                    break;
                                  case 5:
                                    n1 = '${rosaliaList[5]}';
                                    break;
                                  case 6:
                                    n1 = '${rosaliaList[6]}';
                                    break;
                                  default:
                                    throw Error();
                                }
                              } else if (group.x == 3) {
                                switch (rodIndex) {
                                  case 0:
                                    n1 = '${rubyList[0]}';
                                    break;
                                  case 1:
                                    n1 = '${rubyList[1]}';
                                    break;
                                  case 2:
                                    n1 = '${rubyList[2]}';
                                    break;
                                  case 3:
                                    n1 = '${rubyList[3]}';
                                    break;
                                  case 4:
                                    n1 = '${rubyList[4]}';
                                    break;
                                  case 5:
                                    n1 = '${rubyList[5]}';
                                    break;
                                  case 6:
                                    n1 = '${rubyList[6]}';
                                    break;
                                  default:
                                    throw Error();
                                }
                              } else if (group.x == 4) {
                                switch (rodIndex) {
                                  case 0:
                                    n1 = '${shirleList[0]}';
                                    break;
                                  case 1:
                                    n1 = '${shirleList[1]}';
                                    break;
                                  case 2:
                                    n1 = '${shirleList[2]}';
                                    break;
                                  case 3:
                                    n1 = '${shirleList[3]}';
                                    break;
                                  case 4:
                                    n1 = '${shirleList[4]}';
                                    break;
                                  case 5:
                                    n1 = '${shirleList[5]}';
                                    break;
                                  case 6:
                                    n1 = '${shirleList[6]}';
                                    break;
                                  default:
                                    throw Error();
                                }
                              } else if (group.x == 5) {
                                switch (rodIndex) {
                                  case 0:
                                    n1 = '${steveList[0]}';
                                    break;
                                  case 1:
                                    n1 = '${steveList[1]}';
                                    break;
                                  case 2:
                                    n1 = '${steveList[2]}';
                                    break;
                                  case 3:
                                    n1 = '${steveList[3]}';
                                    break;
                                  case 4:
                                    n1 = '${steveList[4]}';
                                    break;
                                  case 5:
                                    n1 = '${steveList[5]}';
                                    break;
                                  case 6:
                                    n1 = '${steveList[6]}';
                                    break;
                                  default:
                                    throw Error();
                                }
                              }
                              return BarTooltipItem(n1 ?? '', tooltipstyle);
                            }),
                        touchCallback: (FlTouchEvent event, barTouchResponse) {
                          setState(
                            () {
                              if (!event.isInterestedForInteractions || barTouchResponse == null || barTouchResponse.spot == null) {
                                touchedIndex = -1;
                                return;
                              }
                              touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
                            },
                          );
                        },
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: true, reservedSize: 30, interval: 1, getTitlesWidget: bottomTitles),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: true, reservedSize: 50, getTitlesWidget: leftTitleWidgets),
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
                      maxY: 12,
                      groupsSpace: 25,
                      barGroups: getData()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
