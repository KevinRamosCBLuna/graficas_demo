import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/samples/indicator.dart';

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
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(children: <Widget>[
            const SizedBox(
              height: 28,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'SM Promo by OpCo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Indicator(
                  color: Colors.blue,
                  text: 'CRY: $cry',
                  isSquare: false,
                  size: touchedIndex == 0 ? 18 : 16,
                  textColor: touchedIndex == 0 ? Colors.black : Colors.grey,
                ),
                Indicator(
                  color: Colors.green,
                  text: 'ODE: $ode',
                  isSquare: false,
                  size: touchedIndex == 1 ? 18 : 16,
                  textColor: touchedIndex == 1 ? Colors.black : Colors.grey,
                ),
                Indicator(
                  color: Colors.orange,
                  text: 'SMI: $smi',
                  isSquare: false,
                  size: touchedIndex == 2 ? 18 : 16,
                  textColor: touchedIndex == 2 ? Colors.black : Colors.grey,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Grand Total: ${cry + ode + smi}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
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
          ]),
        ));
  }

  List<PieChartSectionData> showingSections() {
    double pcry = (cry / (cry + smi + ode)) * 100, pode = (ode / (cry + smi + ode)) * 100, psmi = (smi / (cry + smi + ode)) * 100;
    String rpcry = pcry.toStringAsFixed(2), rpode = pode.toStringAsFixed(2), rpsmi = psmi.toStringAsFixed(2);
    double dpcry = double.parse(rpcry), dpode = double.parse(rpode), dpsmi = double.parse(rpsmi);
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 15.0;
      final radius = isTouched ? 150.0 : 100.0;
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
