import 'package:flutter/material.dart';

import 'package:pluto_grid/pluto_grid.dart';

class TablaConfiguratorTracking extends StatefulWidget {
  const TablaConfiguratorTracking({Key? key}) : super(key: key);

  @override
  State<TablaConfiguratorTracking> createState() => _TablaConfiguratorTrackingState();
}

class _TablaConfiguratorTrackingState extends State<TablaConfiguratorTracking> {
  @override
  Widget build(BuildContext context) {
    late PlutoGridStateManager stateManager;

    return Material(
      color: Colors.white,
      child: /*providertablero.listasTabla.isEmpty
          ? const CircularProgressIndicator()
          : */
          SizedBox(
        child: PlutoGrid(
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
              title: 'Leads',
              field: 'Leads',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('',
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
              title: 'Coverage Lead (SMI)',
              field: 'Coverage_Lead_(SMI)',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Coverage Lead (SMI))',
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
              type: PlutoColumnType.number(format: '###,###.##'),
              enableEditingMode: false,
            ),
            PlutoColumn(
              title: 'Created Lead',
              field: 'Created_Lead',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Created Lead',
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
              type: PlutoColumnType.number(format: '###,###.##'),
              enableEditingMode: false,
            ),
            PlutoColumn(
              title: 'NoCoverage Lead',
              field: 'NoCoverage_Lead',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('NoCoverage Lead',
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
              type: PlutoColumnType.number(format: '###,###.##'),
              enableEditingMode: false,
            ),
            PlutoColumn(
              title: 'IPTV Trial',
              field: 'IPTV_Trial',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('IPTV Trial',
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
              type: PlutoColumnType.number(format: '###,###.##'),
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
              type: PlutoColumnType.number(format: '###,###.##'),
              enableEditingMode: false,
            ),
          ],
          rows: [
            PlutoRow(
              cells: {
                'Leads': PlutoCell(value: 'Leads'),
                'Coverage_Lead_(SMI)': PlutoCell(value: 10),
                'Created_Lead': PlutoCell(value: 1057),
                'NoCoverage_Lead': PlutoCell(value: 45),
                'IPTV_Trial': PlutoCell(value: 10),
                'Total': PlutoCell(value: 1122),
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
