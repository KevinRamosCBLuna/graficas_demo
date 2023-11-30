import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/tablas%20pluto/tabla_referrals_overall.dart';

// ignore: camel_case_types
class ReferralsOverall extends StatefulWidget {
  const ReferralsOverall({Key? key}) : super(key: key);

  @override
  State<ReferralsOverall> createState() => _ReferralsOverallState();
}

class _ReferralsOverallState extends State<ReferralsOverall> {
  int touchedIndex = -1;
  //valores del piechart
  double cry = 6, ode = 35, smi = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Referrals Overall'),
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
                      'Referrals Overall',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: SizedBox(width: 405, height: 235, child: TablaReferralsOverAll()),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Indicator(
                                  color: Colors.blue,
                                  text: 'CRY',
                                  isSquare: false,
                                  size: touchedIndex == 0 ? 18 : 16,
                                  textColor: touchedIndex == 0 ? Colors.black : Colors.grey,
                                ),
                              ),
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
                                color: Colors.orange,
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
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 15.0;
      final radius = isTouched ? 100.0 : 75.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.blue,
            value: cry,
            title: '$cry% ',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.green,
            value: ode,
            title: '$ode%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.orange,
            value: smi,
            title: '$smi%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}
