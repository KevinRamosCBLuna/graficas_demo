import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartsDemo extends StatefulWidget {
  const ChartsDemo({Key? key}) : super(key: key);

  final String title = "Charts Demo";

  @override
  ChartsDemoState createState() => ChartsDemoState();
}

class ChartsDemoState extends State<ChartsDemo> {
  //Declarar valores de la grafica
  List<charts.Series<PerdidasAB, String>> seriesList = [];
  static List<charts.Series<PerdidasAB, String>> _createRandomData() {
    final data = [
      PerdidasAB('Falta de Fondos', 937856.12),
      PerdidasAB('NC no Recibidas', 380000),
      PerdidasAB('Adeudos de NC', 970000),
      PerdidasAB('Propuestas Rechazadas', 210000),
      PerdidasAB('Propuestas sin Respuesta', 180000),
    ];
    return [
      charts.Series<PerdidasAB, String>(
          id: 'Perdidas de Ahorro/ beneficio',
          domainFn: (PerdidasAB valorPAB, _) => valorPAB.descripcion,
          measureFn: (PerdidasAB valorPAB, _) => valorPAB.valorPAB,
          data: data,
          fillColorFn: (PerdidasAB valorPAB, _) {
            return charts.MaterialPalette.green.shadeDefault;
          }),
    ];
  }

  //metodo de la grafica de barras
  barChart() {
    return charts.BarChart(
      seriesList,
      animate: true,
      vertical: false,
      /*barGroupingType: charts.BarGroupingType.stacked,
      defaultRenderer: charts.BarLaneRendererConfig(
          groupingType: charts.BarGroupingType.stacked, strokeWidthPx: 1),*/
      domainAxis: const charts.OrdinalAxisSpec(showAxisLine: false),
    );
  }

  @override
  void initState() {
    super.initState();
    seriesList = _createRandomData();
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 5),
      child: SizedBox(
        width: 850,
        height: 313,
        child: Column(
          children: [
            Center(
                child: Text(
              'Pérdidas de Ahorro / Beneficio',
              textAlign: TextAlign.center,
              style: estilo(),
            )),
            SizedBox(
              width: 850,
              height: 270,
              child: AspectRatio(
                aspectRatio: 1.66,
                child: barChart(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PerdidasAB {
  final String descripcion;
  final double valorPAB;

  PerdidasAB(this.descripcion, this.valorPAB);
}
