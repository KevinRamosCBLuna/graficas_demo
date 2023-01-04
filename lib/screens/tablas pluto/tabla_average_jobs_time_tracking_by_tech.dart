import 'package:flutter/material.dart';

import 'package:pluto_grid/pluto_grid.dart';

class TablaAverageJobsTrackingByTech extends StatefulWidget {
  const TablaAverageJobsTrackingByTech({Key? key}) : super(key: key);

  @override
  State<TablaAverageJobsTrackingByTech> createState() => _TablaAverageJobsTrackingState();
}

class _TablaAverageJobsTrackingState extends State<TablaAverageJobsTrackingByTech> {
  List<double> l1 = [0.7, 1.1, 0.7, 0.5, 0.3, 2.2, 0.5],
      l2 = [0.4, 0.9, 1.1, 1.3, 0.6, 1.3, 0.5],
      l3 = [0.9, 0, 0.7, 1.3, 2.0, 1.8, 1.7],
      l4 = [2.7, 1.3, 1.3, 2.3, 1.1, 1.1, 0.8],
      l5 = [0.6, 0.7, 0.8, 0.5, 0.3, 0.9, 0.6],
      l6 = [5.6, 6.9, 6.4, 2.1, 17.5, 5.8, 3.4],
      l7 = [0.0, 0.0, 0.0, 0.6, 0.0, 0.0, 0.0],
      l8 = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
      l9 = [1.1, 1.9, 0.9, 9.9, 1.1, 1.3, 1.1],
      l10 = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
      l11 = [1.4, 0.7, 1.6, 2.2, 2.1, 2.2, 1.8],
      l12 = [1.1, 1.2, 1.2, 1.8, 0.6, 1.7, 1.6],
      l13 = [1.3, 1.8, 1.5, 7.0, 1.2, 0.9, 1.8],
      l14 = [0.7, 0.9, 0.4, 1.0, 1.0, 0.5, 0.0],
      l15 = [2.9, 1.4, 2.0, 2.5, 1.6, 1.2, 2.3],
      l16 = [0.0, 0.0, 0.9, 0.9, 0.6, 1.0, 1.6],
      l17 = [5.7, 1.2, 2.3, 2.5, 1.3, 8.5, 3.2],
      l18 = [0.0, 0.1, 0.0, 0.1, 0.0, 0.0, 0.0];
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
                '44': PlutoCell(value: l1[0]),
                '45': PlutoCell(value: l1[1]),
                '46': PlutoCell(value: l1[2]),
                '47': PlutoCell(value: l1[3]),
                '48': PlutoCell(value: l1[4]),
                '49': PlutoCell(value: l1[5]),
                '50': PlutoCell(value: l1[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Alex Ogle'),
                '44': PlutoCell(value: l2[0]),
                '45': PlutoCell(value: l2[1]),
                '46': PlutoCell(value: l2[2]),
                '47': PlutoCell(value: l2[3]),
                '48': PlutoCell(value: l2[4]),
                '49': PlutoCell(value: l2[5]),
                '50': PlutoCell(value: l2[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Ben Cartlidge'),
                '44': PlutoCell(value: l3[0]),
                '45': PlutoCell(value: l3[1]),
                '46': PlutoCell(value: l3[2]),
                '47': PlutoCell(value: l3[3]),
                '48': PlutoCell(value: l3[4]),
                '49': PlutoCell(value: l3[5]),
                '50': PlutoCell(value: l3[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Brandon Murdock'),
                '44': PlutoCell(value: l4[0]),
                '45': PlutoCell(value: l4[1]),
                '46': PlutoCell(value: l4[2]),
                '47': PlutoCell(value: l4[3]),
                '48': PlutoCell(value: l4[4]),
                '49': PlutoCell(value: l4[5]),
                '50': PlutoCell(value: l4[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Dylan Hamil'),
                '44': PlutoCell(value: l5[0]),
                '45': PlutoCell(value: l5[1]),
                '46': PlutoCell(value: l5[2]),
                '47': PlutoCell(value: l5[3]),
                '48': PlutoCell(value: l5[4]),
                '49': PlutoCell(value: l5[5]),
                '50': PlutoCell(value: l5[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Fiber Team'),
                '44': PlutoCell(value: l6[0]),
                '45': PlutoCell(value: l6[1]),
                '46': PlutoCell(value: l6[2]),
                '47': PlutoCell(value: l6[3]),
                '48': PlutoCell(value: l6[4]),
                '49': PlutoCell(value: l6[5]),
                '50': PlutoCell(value: l6[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Jeff Simmons'),
                '44': PlutoCell(value: l7[0]),
                '45': PlutoCell(value: l7[1]),
                '46': PlutoCell(value: l7[2]),
                '47': PlutoCell(value: l7[3]),
                '48': PlutoCell(value: l7[4]),
                '49': PlutoCell(value: l7[5]),
                '50': PlutoCell(value: l7[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Joseph Aycock'),
                '44': PlutoCell(value: l8[0]),
                '45': PlutoCell(value: l8[1]),
                '46': PlutoCell(value: l8[2]),
                '47': PlutoCell(value: l8[3]),
                '48': PlutoCell(value: l8[4]),
                '49': PlutoCell(value: l8[5]),
                '50': PlutoCell(value: l8[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Joseph Thomsom'),
                '44': PlutoCell(value: l9[0]),
                '45': PlutoCell(value: l9[1]),
                '46': PlutoCell(value: l9[2]),
                '47': PlutoCell(value: l9[3]),
                '48': PlutoCell(value: l9[4]),
                '49': PlutoCell(value: l9[5]),
                '50': PlutoCell(value: l9[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Kamrin Lilley'),
                '44': PlutoCell(value: l10[0]),
                '45': PlutoCell(value: l10[1]),
                '46': PlutoCell(value: l10[2]),
                '47': PlutoCell(value: l10[3]),
                '48': PlutoCell(value: l10[4]),
                '49': PlutoCell(value: l10[5]),
                '50': PlutoCell(value: l10[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Larry Phillips'),
                '44': PlutoCell(value: l11[0]),
                '45': PlutoCell(value: l11[1]),
                '46': PlutoCell(value: l11[2]),
                '47': PlutoCell(value: l11[3]),
                '48': PlutoCell(value: l11[4]),
                '49': PlutoCell(value: l11[5]),
                '50': PlutoCell(value: l11[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Team 1'),
                '44': PlutoCell(value: l12[0]),
                '45': PlutoCell(value: l12[1]),
                '46': PlutoCell(value: l12[2]),
                '47': PlutoCell(value: l12[3]),
                '48': PlutoCell(value: l12[4]),
                '49': PlutoCell(value: l12[5]),
                '50': PlutoCell(value: l12[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Team 2'),
                '44': PlutoCell(value: l13[0]),
                '45': PlutoCell(value: l13[1]),
                '46': PlutoCell(value: l13[2]),
                '47': PlutoCell(value: l13[3]),
                '48': PlutoCell(value: l13[4]),
                '49': PlutoCell(value: l13[5]),
                '50': PlutoCell(value: l13[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Team 3'),
                '44': PlutoCell(value: l14[0]),
                '45': PlutoCell(value: l14[1]),
                '46': PlutoCell(value: l14[2]),
                '47': PlutoCell(value: l14[3]),
                '48': PlutoCell(value: l14[4]),
                '49': PlutoCell(value: l14[5]),
                '50': PlutoCell(value: l14[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Team 4'),
                '44': PlutoCell(value: l15[0]),
                '45': PlutoCell(value: l15[1]),
                '46': PlutoCell(value: l15[2]),
                '47': PlutoCell(value: l15[3]),
                '48': PlutoCell(value: l15[4]),
                '49': PlutoCell(value: l15[5]),
                '50': PlutoCell(value: l15[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Terry Isreal'),
                '44': PlutoCell(value: l16[0]),
                '45': PlutoCell(value: l16[1]),
                '46': PlutoCell(value: l16[2]),
                '47': PlutoCell(value: l16[3]),
                '48': PlutoCell(value: l16[4]),
                '49': PlutoCell(value: l16[5]),
                '50': PlutoCell(value: l16[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Tim McClaine'),
                '44': PlutoCell(value: l17[0]),
                '45': PlutoCell(value: l17[1]),
                '46': PlutoCell(value: l17[2]),
                '47': PlutoCell(value: l17[3]),
                '48': PlutoCell(value: l17[4]),
                '49': PlutoCell(value: l17[5]),
                '50': PlutoCell(value: l17[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Tech': PlutoCell(value: 'Towe Team'),
                '44': PlutoCell(value: l18[0]),
                '45': PlutoCell(value: l18[1]),
                '46': PlutoCell(value: l18[2]),
                '47': PlutoCell(value: l18[3]),
                '48': PlutoCell(value: l18[4]),
                '49': PlutoCell(value: l18[5]),
                '50': PlutoCell(value: l18[6]),
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
