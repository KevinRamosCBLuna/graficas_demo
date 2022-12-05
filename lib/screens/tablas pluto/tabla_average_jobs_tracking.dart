import 'package:flutter/material.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:pluto_grid/pluto_grid.dart';

class TablaAverageJobsTracking extends StatefulWidget {
  const TablaAverageJobsTracking({Key? key}) : super(key: key);

  @override
  State<TablaAverageJobsTracking> createState() => _TablaAverageJobsTrackingState();
}

class _TablaAverageJobsTrackingState extends State<TablaAverageJobsTracking> {
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
              title: 'opco',
              field: 'opco',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('opco',
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
              title: 'CRY',
              field: 'CRY',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('CRY',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              backgroundColor: Colors.blue,
              titleTextAlign: PlutoColumnTextAlign.center,
              textAlign: PlutoColumnTextAlign.center,
              type: PlutoColumnType.number(format: '###,###.##'),
              enableEditingMode: false,
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.average,
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
            PlutoColumn(
              title: 'ODE',
              field: 'ODE',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('ODE',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              backgroundColor: Colors.green,
              titleTextAlign: PlutoColumnTextAlign.center,
              textAlign: PlutoColumnTextAlign.center,
              type: PlutoColumnType.number(format: '###,###.##'),
              enableEditingMode: false,
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.average,
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
            PlutoColumn(
              title: 'SMI',
              field: 'SMI',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('SMI',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
              backgroundColor: Colors.orange,
              titleTextAlign: PlutoColumnTextAlign.center,
              textAlign: PlutoColumnTextAlign.center,
              type: PlutoColumnType.number(format: '###,###.##'),
              enableEditingMode: false,
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.average,
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
              type: PlutoColumnType.number(format: '###,###.##'),
              enableEditingMode: false,
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.average,
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
          columnGroups: [
            PlutoColumnGroup(
              title: 'Week',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: ['opco'],
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
              title: 'JobTime Hrs (Average)',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: ['CRY', 'ODE', 'SMI', 'GrandTotal'],
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('JobTime Hrs (Average)',
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
                'opco': PlutoCell(value: 43),
                'CRY': PlutoCell(value: 1.2),
                'ODE': PlutoCell(value: 1.3),
                'SMI': PlutoCell(value: 2.0),
                'GrandTotal': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'opco': PlutoCell(value: 44),
                'CRY': PlutoCell(value: 0.6),
                'ODE': PlutoCell(value: 2.2),
                'SMI': PlutoCell(value: 1.9),
                'GrandTotal': PlutoCell(value: 1.3),
              },
            ),
            PlutoRow(
              cells: {
                'opco': PlutoCell(value: 45),
                'CRY': PlutoCell(value: 0.8),
                'ODE': PlutoCell(value: 1.5),
                'SMI': PlutoCell(value: 1.6),
                'GrandTotal': PlutoCell(value: 1.2),
              },
            ),
            PlutoRow(
              cells: {
                'opco': PlutoCell(value: 46),
                'CRY': PlutoCell(value: 0.8),
                'ODE': PlutoCell(value: 1.2),
                'SMI': PlutoCell(value: 1.8),
                'GrandTotal': PlutoCell(value: 1.1),
              },
            ),
            PlutoRow(
              cells: {
                'opco': PlutoCell(value: 47),
                'CRY': PlutoCell(value: 0.8),
                'ODE': PlutoCell(value: 4.1),
                'SMI': PlutoCell(value: 3.2),
                'GrandTotal': PlutoCell(value: 2.2),
              },
            ),
            PlutoRow(
              cells: {
                'opco': PlutoCell(value: 48),
                'CRY': PlutoCell(value: 0.7),
                'ODE': PlutoCell(value: 1.3),
                'SMI': PlutoCell(value: 3.4),
                'GrandTotal': PlutoCell(value: 1.8),
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
