import 'package:flutter/material.dart';

import 'package:pluto_grid/pluto_grid.dart';

class TablaLastWeek extends StatefulWidget {
  const TablaLastWeek({Key? key}) : super(key: key);

  @override
  State<TablaLastWeek> createState() => _TablaLastWeekState();
}

class _TablaLastWeekState extends State<TablaLastWeek> {
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
              title: 'Instance',
              field: 'Instance',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Instance',
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
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.count,
                  alignment: Alignment.center,
                  titleSpanBuilder: (text) {
                    return [
                      const TextSpan(text: 'Grand Total', style: (TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'CustomerID (Count All)',
              field: 'CustomerID',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('CustomerID (Count All)',
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
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.sum,
                  format: '###,###.##',
                  alignment: Alignment.center,
                  titleSpanBuilder: (text) {
                    return [
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
          ],
          rows: [
            PlutoRow(
              cells: {
                'Instance': PlutoCell(value: 'ODE'),
                'CustomerID': PlutoCell(value: 3),
              },
            ),
            PlutoRow(
              cells: {
                'Instance': PlutoCell(value: 'SMI'),
                'CustomerID': PlutoCell(value: 8),
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
