// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:graficas_demo/models/qt/Get_tablero_ahorro_beneficio_qt.dart';
import 'package:supabase/supabase.dart';
//import 'package:graficas_demo/screens/perdidas_ahorro_beneficio.dart';
import 'package:graficas_demo/screens/demo/ahorro_beneficio.dart';
//import 'package:graficas_demo/screens/tabla.dart';
import 'package:graficas_demo/screens/tabla_v2.dart';

class Dashboards extends StatefulWidget {
  const Dashboards({Key? key}) : super(key: key);

  @override
  State<Dashboards> createState() => _DashboardsState();
}

TextStyle estilo() {
  return const TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
}

TextStyle estilo2() {
  return const TextStyle(
    color: Colors.black,
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );
}

class _DashboardsState extends State<Dashboards> {
  late double touchedValue = 0;

  @override
  void initState() {
    touchedValue = -1;
    gettabla();
    super.initState();
  }

  Future<void> gettabla() async {
    String url = "http://supabase.cbluna-dev.com:8000";
    String key =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJhbm9uIiwKICAgICJpc3MiOiAic3VwYWJhc2UiLAogICAgImlhdCI6IDE2NTc2OTU2MDAsCiAgICAiZXhwIjogMTgxNTQ2MjAwMAp9.8h6s6K2rRn20SOc7robvygAWNhZsSWD4xFRdIZMyYVI";

    final client = SupabaseClient(url, key);
    dynamic response = await client.rpc('get_tablero_ahorro_beneficio', params: {'fechaini': '2022-07-01', 'fechafin': '2022-08-12'}).execute();

    //print("-----Error: ${response.error}");

    response = jsonEncode(response);

    //print("-----Response: ");
    //print(response.toString());

    GetTableroAhorroBeneficioQt objecto = getTableroAhorroBeneficioQtFromMap(response);
    print(objecto.data[0].proveedor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.insert_chart,
              color: Colors.black,
              size: 40,
            ),
            Text('Tablero', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30)),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: AlignmentDirectional.topStart,
                              padding: EdgeInsetsDirectional.zero,
                              height: 80,
                              width: 200,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 232, 232, 232), shape: BoxShape.rectangle),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'FONDOS',
                                    textAlign: TextAlign.center,
                                    style: estilo(),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '12M',
                                        textAlign: TextAlign.center,
                                        style: estilo2(),
                                      ),
                                      const Icon(
                                        Icons.arrow_downward,
                                        color: Colors.red,
                                        size: 30,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: AlignmentDirectional.topStart,
                              padding: EdgeInsetsDirectional.zero,
                              height: 80,
                              width: 200,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 232, 232, 232), shape: BoxShape.rectangle),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'EXCEDENTE',
                                      textAlign: TextAlign.center,
                                      style: estilo(),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '0',
                                          textAlign: TextAlign.center,
                                          style: estilo2(),
                                        ),
                                        const Icon(
                                          Icons.arrow_upward,
                                          color: Colors.green,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              alignment: AlignmentDirectional.topStart,
                              padding: EdgeInsetsDirectional.zero,
                              height: 80,
                              width: 200,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 232, 232, 232), shape: BoxShape.rectangle),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'AHORRO/ BENEFICIO',
                                      textAlign: TextAlign.center,
                                      style: estilo(),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '900 K',
                                          textAlign: TextAlign.center,
                                          style: estilo2(),
                                        ),
                                        const Icon(
                                          Icons.arrow_upward,
                                          color: Colors.green,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              alignment: AlignmentDirectional.topStart,
                              padding: EdgeInsetsDirectional.zero,
                              height: 80,
                              width: 200,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 232, 232, 232), shape: BoxShape.rectangle),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'OPORTUNIDADES',
                                      textAlign: TextAlign.center,
                                      style: estilo(),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '80 K',
                                          textAlign: TextAlign.center,
                                          style: estilo2(),
                                        ),
                                        const Icon(
                                          Icons.arrow_downward,
                                          color: Colors.red,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              alignment: AlignmentDirectional.topStart,
                              padding: EdgeInsetsDirectional.zero,
                              height: 80,
                              width: 200,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 232, 232, 232), shape: BoxShape.rectangle),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'RESPUESTA PUSH',
                                      textAlign: TextAlign.center,
                                      style: estilo(),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '30 %',
                                          textAlign: TextAlign.center,
                                          style: estilo2(),
                                        ),
                                        const Icon(
                                          Icons.arrow_downward,
                                          color: Colors.red,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        AhorroBeneficio(),
                        //PerdidasAhorroBeneficio(),
                       // ChartsDemo()
                      ],
                    ),
                    const TablaV2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
