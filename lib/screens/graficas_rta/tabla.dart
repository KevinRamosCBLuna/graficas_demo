// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:graficas_demo/models/qt/Get_tablero_ahorro_beneficio_qt.dart';
import 'package:supabase/supabase.dart';
//import 'package:table_sticky_headers/table_sticky_headers.dart';

//definir la clase de cada elemento de la tabla

class Tabla extends StatefulWidget {
  const Tabla({Key? key}) : super(key: key);

  @override
  State<Tabla> createState() => _TablaState();
}

List<bool> selected = List<bool>.generate(listas.length, (int index) => false);
List<List<dynamic>> listas = [];

class _TablaState extends State<Tabla> {
  @override
  void initState() {
    gettabla();
    super.initState();
  }

  Future<void> gettabla() async {
    try {
      String url = "http://supabase.cbluna-dev.com:8000";
      String key =
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJhbm9uIiwKICAgICJpc3MiOiAic3VwYWJhc2UiLAogICAgImlhdCI6IDE2NTc2OTU2MDAsCiAgICAiZXhwIjogMTgxNTQ2MjAwMAp9.8h6s6K2rRn20SOc7robvygAWNhZsSWD4xFRdIZMyYVI";

      final client = SupabaseClient(url, key);
      dynamic response = await client.rpc('get_tablero_ahorro_beneficio',
          params: {
            'fechaini': '2022-07-01',
            'fechafin': '2022-08-12'
          }).execute();

      print("-----Error: ${response.error}");

      response = jsonEncode(response);

      /*print("-----Response: ");
      print(response.toString());*/

      GetTableroAhorroBeneficioQt objecto =
          getTableroAhorroBeneficioQtFromMap(response);
      listas = [];
      for (var i = 0; i < objecto.data.length; i++) {
        List<dynamic> templist = [];
        templist.add(objecto.data[i].proveedor);
        templist.add(objecto.data[i].importe);
        templist.add(objecto.data[i].noFactura);
        templist.add(objecto.data[i].equivalencia);
        listas.add(templist);
        //print(listas[i]);
      }
    } catch (e) {
      print(e);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: 600,
          child: DataTable(
            dataTextStyle: const TextStyle(
              color: Colors.black,
            ),
            dividerThickness: 3,
            headingTextStyle: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
            headingRowColor:
                MaterialStateProperty.all(const Color.fromRGBO(68, 84, 106, 1)),
            columns: const <DataColumn>[
              DataColumn(label: Text('Proveedor')),
              DataColumn(label: Text('Importe')),
              DataColumn(label: Text('No. de Facturas')),
              DataColumn(label: Text('Equivalencia')),
            ],
            rows: List<DataRow>.generate(listas.length, (int index) {
              return DataRow(
                color: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  // All rows will have the same selected color.
                  if (states.contains(MaterialState.selected)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.08);
                  }
                  // Even rows will have a grey color.
                  if (index.isEven) {
                    return Colors.grey.withOpacity(0.3);
                  }
                  return null; // Use default value for other states and odd rows.
                }),
                cells: <DataCell>[
                  DataCell(
                    Text('${listas[index][0]}'),
                  ),
                  DataCell(
                    Text('${listas[index][1]}'),
                  ),
                  DataCell(
                    Text('${listas[index][2]}'),
                  ),
                  DataCell(
                    Text('${listas[index][3]}'),
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}


/*DataTable(
            dataTextStyle: const TextStyle(
              color: Colors.black,
            ),
            dividerThickness: 3,
            headingTextStyle: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
            headingRowColor:
                MaterialStateProperty.all(const Color.fromRGBO(68, 84, 106, 1)),
            columns: const [
              DataColumn(label: Text('Proveedor')),
              DataColumn(label: Text('Importe')),
              DataColumn(label: Text('No. de Facturas')),
              DataColumn(label: Text('Equivalencia')),
            ],
            rows: [
              DataRow(
                  color: MaterialStateProperty.all(
                      const Color.fromRGBO(68, 84, 106, 0.1)),
                  cells:<DataCell>[DataCell(Text('Row $index'))]),
              DataRow(
                  color: MaterialStateProperty.all(
                      const Color.fromRGBO(68, 84, 106, 0.1)),
                  cells:<DataCell>[DataCell(Text('Row $index'))]),
              DataRow(
                  color: MaterialStateProperty.all(
                      const Color.fromRGBO(68, 84, 106, 0.1)),
                  cells:<DataCell>[DataCell(Text('Row $index'))]),
              DataRow(
                  color: MaterialStateProperty.all(
                      const Color.fromRGBO(68, 84, 106, 0.1)),
                  cells:<DataCell>[DataCell(Text('Row $index'))]),
            ],
          ),*/