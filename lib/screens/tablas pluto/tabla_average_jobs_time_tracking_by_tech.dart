import 'package:flutter/material.dart';

import 'package:pluto_grid/pluto_grid.dart';

class TablaAverageJobsTrackingByTech extends StatefulWidget {
  const TablaAverageJobsTrackingByTech({Key? key}) : super(key: key);

  @override
  State<TablaAverageJobsTrackingByTech> createState() => _TablaAverageJobsTrackingState();
}

class _TablaAverageJobsTrackingState extends State<TablaAverageJobsTrackingByTech> {
  @override
  Widget build(BuildContext context) {
    late PlutoGridStateManager stateManager;
    double screenWidth = MediaQuery.of(context).size.width;

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
              title: 'Tech',
              field: 'Tech',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Tech',
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
              title: '44',
              field: '44',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('44',
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
            PlutoColumn(
              title: '45',
              field: '45',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('45',
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
            PlutoColumn(
              title: '46',
              field: '46',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('46',
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
            PlutoColumn(
              title: '47',
              field: '47',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('47',
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
            PlutoColumn(
              title: '48',
              field: '48',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('48',
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
            PlutoColumn(
              title: '49',
              field: '49',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('49',
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
            PlutoColumn(
              title: '50',
              field: '50',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('50',
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
              fields: ['Tech'],
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
              fields: ['44', '45', '46', '47', '48', '49', '50'],
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
                'Tech': PlutoCell(value: 'Adam Billiot'),
                '44': PlutoCell(value: 1.2),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 2.0),
                '47': PlutoCell(value: 1.4),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Alex Ogle'),
                '44': PlutoCell(value: 0.6),
                '45': PlutoCell(value: 2.2),
                '46': PlutoCell(value: 1.9),
                '47': PlutoCell(value: 1.3),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Ben Cartlidge'),
                '44': PlutoCell(value: 0.8),
                '45': PlutoCell(value: 1.5),
                '46': PlutoCell(value: 1.6),
                '47': PlutoCell(value: 1.2),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Brandon Murdock'),
                '44': PlutoCell(value: 0.8),
                '45': PlutoCell(value: 1.2),
                '46': PlutoCell(value: 1.8),
                '47': PlutoCell(value: 1.1),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Dylan Hamil'),
                '44': PlutoCell(value: 0.8),
                '45': PlutoCell(value: 4.1),
                '46': PlutoCell(value: 3.2),
                '47': PlutoCell(value: 2.2),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Fiber Team'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Jeff Simmons'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Joseph Aycock'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Joseph Thomsom'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Kamrin Lilley'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Larry Phillips'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Team 1'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Team 2'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Team 3'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Team 4'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Terry Isreal'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Tim McClaine'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Towe Team'),
                '44': PlutoCell(value: 0.7),
                '45': PlutoCell(value: 1.3),
                '46': PlutoCell(value: 3.4),
                '47': PlutoCell(value: 1.8),
                '48': PlutoCell(value: 1.3),
                '49': PlutoCell(value: 2.0),
                '50': PlutoCell(value: 1.4),
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
