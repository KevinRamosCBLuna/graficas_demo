import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/week_provider.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:provider/provider.dart';

class TablaService extends StatefulWidget {
  const TablaService({Key? key}) : super(key: key);

  @override
  State<TablaService> createState() => _TablaServiceState();
}

class _TablaServiceState extends State<TablaService> {
  @override
  Widget build(BuildContext context) {
    SendWeek week_provider = Provider.of<SendWeek>(context, listen: true);
    late PlutoGridStateManager stateManager;
    double dis = 3, inst = 33, othe = 4, ser = 60;
    if (week_provider.weekOther == 50) {
      setState(() {
        dis = 3;
        inst = 33;
        othe = 4;
        ser = 60;
      });
    }
    if (week_provider.weekOther == 51) {
      setState(() {
        dis = 3.17;
        inst = 30.51;
        othe = 1.11;
        ser = 65.21;
      });
    }
    if (week_provider.weekOther == 52) {
      setState(() {
        dis = 4.72;
        inst = 43.03;
        othe = 0;
        ser = 52.25;
      });
    }

    return Material(
      color: Colors.white,
      child: /*providertablero.listasTabla.isEmpty
          ? const CircularProgressIndicator()
          : */
          SizedBox(
        child: PlutoGrid(
          key: UniqueKey(),
          configuration: PlutoGridConfiguration(
            localeText: const PlutoGridLocaleText.spanish(),
            //style: plutoGridStyleConfig(context),
            columnFilter: PlutoGridColumnFilterConfig(
              filters: const [
                ...FilterHelper.defaultFilters,
              ],
              resolveDefaultColumnFilter: (column, resolver) {
                return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
              },
            ),
          ),
          columns: [
            PlutoColumn(
              title: 'Disconnets',
              field: 'Disconnets',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Disconnets',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              backgroundColor: const Color(0xFF2E6FC5),
              titleTextAlign: PlutoColumnTextAlign.center,
              textAlign: PlutoColumnTextAlign.center,
              type: PlutoColumnType.text(),
              enableEditingMode: false,
            ),
            PlutoColumn(
              title: 'Installs',
              field: 'Installs',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Installs',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              backgroundColor: const Color(0xFF2E6FC5),
              titleTextAlign: PlutoColumnTextAlign.center,
              textAlign: PlutoColumnTextAlign.center,
              type: PlutoColumnType.text(),
              enableEditingMode: false,
            ),
            PlutoColumn(
              title: 'Other',
              field: 'Other',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Other',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              backgroundColor: const Color(0xFF2E6FC5),
              titleTextAlign: PlutoColumnTextAlign.center,
              textAlign: PlutoColumnTextAlign.center,
              type: PlutoColumnType.text(),
              enableEditingMode: false,
            ),
            PlutoColumn(
              title: 'Service',
              field: 'Service',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Service',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              backgroundColor: const Color(0xFF2E6FC5),
              titleTextAlign: PlutoColumnTextAlign.center,
              textAlign: PlutoColumnTextAlign.center,
              type: PlutoColumnType.text(),
              enableEditingMode: false,
            ),
            PlutoColumn(
              title: 'Total',
              field: 'Total',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Total',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              backgroundColor: const Color(0xFF2E6FC5),
              titleTextAlign: PlutoColumnTextAlign.center,
              textAlign: PlutoColumnTextAlign.center,
              type: PlutoColumnType.text(),
              enableEditingMode: false,
            ),
          ],
          rows: [
            PlutoRow(
              cells: {
                'Disconnets': PlutoCell(value: '$dis%'),
                'Installs': PlutoCell(value: '$inst%'),
                'Other': PlutoCell(value: '$othe%'),
                'Service': PlutoCell(value: '$ser%'),
                'Total': PlutoCell(value: '${dis + inst + othe + ser}%'),
              },
            ),
          ],
          /* createFooter: (stateManager) {
                  stateManager.setPageSize(
                    10,
                    notify: false,
                  ); // default 40
                  for (var i = 0; i < stateManager.totalPage; i++) {
                    providertablero.pageChecked.add(false);
                  }
                  return PlutoPagination(stateManager);
                },
               */
          onLoaded: (event) {
            stateManager = event.stateManager;

            stateManager = event.stateManager;

            //stateManager.setShowColumnFilter(true);
            stateManager.setSelectingMode(
              PlutoGridSelectingMode.row,
            );
          },
          onRowChecked: (event) {},
        ),
      ),
    );
  }
}
