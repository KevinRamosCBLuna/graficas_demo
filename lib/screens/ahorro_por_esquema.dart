import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

// ignore: camel_case_types
class Ahorro_por_Esquema extends StatefulWidget {
  const Ahorro_por_Esquema({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Ahorro por Esquema'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(children: <Widget>[
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Indicator(
                  color: const Color.fromARGB(255, 242, 4, 255),
                  text: 'Pull NC-Pago',
                  isSquare: false,
                  size: touchedIndex == 0 ? 18 : 16,
                  textColor: touchedIndex == 0 ? Colors.black : Colors.grey,
                ),
                Indicator(
                  color: const Color.fromARGB(255, 29, 9, 106),
                  text: 'Pull Pago-NC',
                  isSquare: false,
                  size: touchedIndex == 1 ? 18 : 16,
                  textColor: touchedIndex == 1 ? Colors.black : Colors.grey,
                ),
                Indicator(
                  color: const Color.fromARGB(255, 45, 14, 199),
                  text: 'Push Pago-NC',
                  isSquare: false,
                  size: touchedIndex == 2 ? 18 : 16,
                  textColor: touchedIndex == 2 ? Colors.black : Colors.grey,
                ),
              ],
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                      pieTouchData: PieTouchData(touchCallback:
                          (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        });
                      }),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 0,
                      centerSpaceRadius: 100,
                      sections: showingSections()),
                ),
              ),
            ),
          ]),
        ));
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 15.0;
      final radius = isTouched ? 150.0 : 100.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 242, 4, 255),
            value: 12,
            title: '12% ',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 29, 9, 106),
            value: 43,
            title: '43%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 45, 14, 199),
            value: 45,
            title: '45%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}
