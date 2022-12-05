import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/tablas%20pluto/tabla_last_week.dart';

// ignore: camel_case_types
class LastWeek extends StatefulWidget {
  const LastWeek({Key? key}) : super(key: key);

  @override
  State<LastWeek> createState() => _LastWeekState();
}

class _LastWeekState extends State<LastWeek> {
  int touchedIndex = -1;
  //valores del piechart
  double ode = 3, smi = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Last Week'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Last Week',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: SizedBox(width: 405, height: 190, child: TablaLastWeek()),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Indicator(
                                  color: Colors.green,
                                  text: 'ODE',
                                  isSquare: false,
                                  size: touchedIndex == 1 ? 18 : 16,
                                  textColor: touchedIndex == 1 ? Colors.black : Colors.grey,
                                ),
                              ),
                              Indicator(
                                color: Colors.blue,
                                text: 'SMI',
                                isSquare: false,
                                size: touchedIndex == 2 ? 18 : 16,
                                textColor: touchedIndex == 2 ? Colors.black : Colors.grey,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 600,
                            height: 400,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: PieChart(
                                PieChartData(
                                    pieTouchData: PieTouchData(touchCallback: (FlTouchEvent event, pieTouchResponse) {
                                      setState(() {
                                        if (!event.isInterestedForInteractions || pieTouchResponse == null || pieTouchResponse.touchedSection == null) {
                                          touchedIndex = -1;
                                          return;
                                        }
                                        touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
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
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    double pode = (ode / (smi + ode)) * 100, psmi = (smi / (ode + smi)) * 100;
    String rpode = pode.toStringAsFixed(2), rpsmi = psmi.toStringAsFixed(2);
    double dpode = double.parse(rpode), dpsmi = double.parse(rpsmi);
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 15.0;
      final radius = isTouched ? 100.0 : 75.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.blue,
            value: dpode,
            title: '$dpode%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.green,
            value: dpsmi,
            title: '$dpsmi%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );

        default:
          throw Error();
      }
    });
  }
}
