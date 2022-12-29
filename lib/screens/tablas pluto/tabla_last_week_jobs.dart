import 'package:flutter/material.dart';

import 'package:pluto_grid/pluto_grid.dart';

class TablaLastWeekJobs extends StatefulWidget {
  const TablaLastWeekJobs({Key? key}) : super(key: key);

  @override
  State<TablaLastWeekJobs> createState() => _TablaLastWeekJobsState();
}

class _TablaLastWeekJobsState extends State<TablaLastWeekJobs> {
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
              title: 'Type',
              field: 'Type',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Type',
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
              type: PlutoColumnType.number(),
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
              title: 'Disconnect',
              field: 'Disconnect',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Disconnect',
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
              type: PlutoColumnType.number(),
              enableEditingMode: false,
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.sum,
                  alignment: Alignment.center,
                  titleSpanBuilder: (text) {
                    return [
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'Install',
              field: 'Install',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Install',
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
              type: PlutoColumnType.number(),
              enableEditingMode: false,
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.sum,
                  alignment: Alignment.center,
                  titleSpanBuilder: (text) {
                    return [
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
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
              type: PlutoColumnType.number(),
              enableEditingMode: false,
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.sum,
                  alignment: Alignment.center,
                  titleSpanBuilder: (text) {
                    return [
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
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
              type: PlutoColumnType.number(),
              enableEditingMode: false,
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.sum,
                  alignment: Alignment.center,
                  titleSpanBuilder: (text) {
                    return [
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'Grand Total',
              field: 'GrandTotal',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Grand Total',
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
              type: PlutoColumnType.number(),
              enableEditingMode: false,
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.sum,
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
          columnGroups: [
            PlutoColumnGroup(
              title: 'Week',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: ['Type'],
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Week',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            ),
            PlutoColumnGroup(
              title: 'opco (Count All)',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: ['Disconnect', 'Install', 'Other', 'Service', 'GrandTotal'],
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('opco (Count All)',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            )
          ],
          rows: [
            PlutoRow(
              cells: {
                'Type': PlutoCell(value: 43),
                'Disconnect': PlutoCell(value: 11),
                'Install': PlutoCell(value: 45),
                'Other': PlutoCell(value: 16),
                'Service': PlutoCell(value: 107),
                'GrandTotal': PlutoCell(value: 179),
              },
            ),
            PlutoRow(
              cells: {
                'Type': PlutoCell(value: 44),
                'Disconnect': PlutoCell(value: 10),
                'Install': PlutoCell(value: 31),
                'Other': PlutoCell(value: 3),
                'Service': PlutoCell(value: 95),
                'GrandTotal': PlutoCell(value: 139),
              },
            ),
            PlutoRow(
              cells: {
                'Type': PlutoCell(value: 45),
                'Disconnect': PlutoCell(value: 7),
                'Install': PlutoCell(value: 39),
                'Other': PlutoCell(value: 12),
                'Service': PlutoCell(value: 95),
                'GrandTotal': PlutoCell(value: 153),
              },
            ),
            PlutoRow(
              cells: {
                'Type': PlutoCell(value: 46),
                'Disconnect': PlutoCell(value: 15),
                'Install': PlutoCell(value: 32),
                'Other': PlutoCell(value: 5),
                'Service': PlutoCell(value: 124),
                'GrandTotal': PlutoCell(value: 176),
              },
            ),
            PlutoRow(
              cells: {
                'Type': PlutoCell(value: 47),
                'Disconnect': PlutoCell(value: 13),
                'Install': PlutoCell(value: 37),
                'Other': PlutoCell(value: 9),
                'Service': PlutoCell(value: 136),
                'GrandTotal': PlutoCell(value: 195),
              },
            ),
            PlutoRow(
              cells: {
                'Type': PlutoCell(value: 48),
                'Disconnect': PlutoCell(value: 7),
                'Install': PlutoCell(value: 19),
                'Other': PlutoCell(value: 4),
                'Service': PlutoCell(value: 67),
                'GrandTotal': PlutoCell(value: 97),
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
