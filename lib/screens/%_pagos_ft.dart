// ignore: file_names
// ignore_for_file: camel_case_types, file_names, duplicate_ignore
import 'package:fl_chart/fl_chart.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:flutter/material.dart';

class Porcentaje_Pagos_FT extends StatefulWidget {
  const Porcentaje_Pagos_FT({Key? key}) : super(key: key);

  @override
  State<Porcentaje_Pagos_FT> createState() => _Porcentaje_Pagos_FTState();
}

class _Porcentaje_Pagos_FTState extends State<Porcentaje_Pagos_FT> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('% Pagos Fuera de Tiempo'),
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
                    color: const Color(0xff0293ee),
                    text: 'Ene',
                    isSquare: false,
                    size: touchedIndex == 0 ? 18 : 16,
                    textColor: touchedIndex == 0 ? Colors.black : Colors.grey,
                  ),
                  Indicator(
                    color: const Color(0xfff8b250),
                    text: 'Feb',
                    isSquare: false,
                    size: touchedIndex == 1 ? 18 : 16,
                    textColor: touchedIndex == 1 ? Colors.black : Colors.grey,
                  ),
                  Indicator(
                    color: const Color(0xff845bef),
                    text: 'Mar',
                    isSquare: false,
                    size: touchedIndex == 2 ? 18 : 16,
                    textColor: touchedIndex == 2 ? Colors.black : Colors.grey,
                  ),
                  Indicator(
                    color: const Color(0xff13d38e),
                    text: 'Abr',
                    isSquare: false,
                    size: touchedIndex == 3 ? 18 : 16,
                    textColor: touchedIndex == 3 ? Colors.black : Colors.grey,
                  ),
                  Indicator(
                    color: const Color.fromARGB(255, 80, 248, 220),
                    text: 'May',
                    isSquare: false,
                    size: touchedIndex == 4 ? 18 : 16,
                    textColor: touchedIndex == 4 ? Colors.black : Colors.grey,
                  ),
                  Indicator(
                    color: const Color.fromARGB(255, 204, 91, 239),
                    text: 'Jun',
                    isSquare: false,
                    size: touchedIndex == 5 ? 18 : 16,
                    textColor: touchedIndex == 5 ? Colors.black : Colors.grey,
                  ),
                  Indicator(
                    color: const Color.fromARGB(255, 19, 131, 211),
                    text: 'Jul',
                    isSquare: false,
                    size: touchedIndex == 6 ? 18 : 16,
                    textColor: touchedIndex == 6 ? Colors.black : Colors.grey,
                  ),
                  Indicator(
                    color: const Color.fromARGB(255, 248, 97, 80),
                    text: 'Ago',
                    isSquare: false,
                    size: touchedIndex == 7 ? 18 : 16,
                    textColor: touchedIndex == 7 ? Colors.black : Colors.grey,
                  ),
                  Indicator(
                    color: const Color.fromARGB(255, 239, 91, 140),
                    text: 'Sep',
                    isSquare: false,
                    size: touchedIndex == 8 ? 18 : 16,
                    textColor: touchedIndex == 8 ? Colors.black : Colors.grey,
                  ),
                  Indicator(
                    color: const Color.fromARGB(255, 19, 211, 25),
                    text: 'Oct',
                    isSquare: false,
                    size: touchedIndex == 9 ? 18 : 16,
                    textColor: touchedIndex == 9 ? Colors.black : Colors.grey,
                  ),
                  Indicator(
                    color: const Color.fromARGB(255, 236, 122, 23),
                    text: 'Nov',
                    isSquare: false,
                    size: touchedIndex == 10 ? 18 : 16,
                    textColor: touchedIndex == 10 ? Colors.black : Colors.grey,
                  ),
                  Indicator(
                    color: const Color.fromARGB(255, 8, 41, 107),
                    text: 'Dic',
                    isSquare: false,
                    size: touchedIndex == 11 ? 18 : 16,
                    textColor: touchedIndex == 11 ? Colors.black : Colors.grey,
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
                        sectionsSpace: 2,
                        centerSpaceRadius: 0,
                        sections: showingSections()),
                  ),
                ),
              )
            ])));
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(12, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 50.0 : 20.0;
      final radius = isTouched ? 350.0 : 250.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 10,
            title: '10%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 7,
            title: '7%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 8,
            title: '8%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 10,
            title: '10%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 4:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 80, 248, 220),
            value: 11,
            title: '11%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 5:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 204, 91, 239),
            value: 11,
            title: '11%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 6:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 19, 131, 211),
            value: 9,
            title: '9%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 7:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 248, 97, 80),
            value: 8,
            title: '8%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 8:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 239, 91, 140),
            value: 9,
            title: '9%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 9:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 19, 211, 25),
            value: 8,
            title: '8%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 10:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 236, 122, 23),
            value: 4,
            title: '4%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 11:
          return PieChartSectionData(
            color: const Color.fromARGB(255, 8, 41, 107),
            value: 5,
            title: '5%',
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
