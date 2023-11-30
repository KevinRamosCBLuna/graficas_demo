import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';
import 'package:graficas_demo/screens/tablas%20pluto/tabla_sm_promo.dart';

// ignore: camel_case_types
class SmPromo extends StatefulWidget {
  const SmPromo({Key? key}) : super(key: key);

  @override
  State<SmPromo> createState() => _SmPromoState();
}

class _SmPromoState extends State<SmPromo> {
  int touchedIndex = -1;
  //valores del piechart
  double cry = 14, ode = 52, smi = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SM Promo by OpCo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'SM Promo by OpCo',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: SizedBox(width: 405, height: 235, child: TablaSmPromo()),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    double pcry = (cry / (cry + smi + ode)) * 100, pode = (ode / (cry + smi + ode)) * 100, psmi = (smi / (cry + smi + ode)) * 100;
    String rpcry = pcry.toStringAsFixed(2), rpode = pode.toStringAsFixed(2), rpsmi = psmi.toStringAsFixed(2);
    double dpcry = double.parse(rpcry), dpode = double.parse(rpode), dpsmi = double.parse(rpsmi);
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 15.0;
      final radius = isTouched ? 100.0 : 75.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.blue,
            value: cry,
            title: '$dpcry% ',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.green,
            value: ode,
            title: '$dpode%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.orange,
            value: smi,
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
