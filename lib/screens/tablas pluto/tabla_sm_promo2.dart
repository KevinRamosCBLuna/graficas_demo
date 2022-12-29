import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class TablaSmPromo2 extends StatefulWidget {
  const TablaSmPromo2({Key? key}) : super(key: key);

  @override
  State<TablaSmPromo2> createState() => _TablaSmPromo2State();
}

class _TablaSmPromo2State extends State<TablaSmPromo2> {
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
          columnGroups: [
            PlutoColumnGroup(
              title: 'Instance',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: ['Promo'],
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
            ),
            PlutoColumnGroup(
              title: 'Customer ID (Count All)',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: ['SM380722', 'SM680722', 'SM980722', 'GrandTotal'],
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Customer ID (Count All)',
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
          columns: [
            PlutoColumn(
              title: 'Promo',
              field: 'Promo',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Promo',
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
              title: 'SM380722',
              field: 'SM380722',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('SM380722',
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
            PlutoColumn(
              title: 'SM680722',
              field: 'SM680722',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('SM680722',
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
            PlutoColumn(
              title: 'SM980722',
              field: 'SM980722',
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('SM980722',
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
                'Promo': PlutoCell(value: 'CRY'),
                'SM380722': PlutoCell(value: 3),
                'SM680722': PlutoCell(value: 2),
                'SM980722': PlutoCell(value: 9),
                'GrandTotal': PlutoCell(value: 14),
              },
            ),
            PlutoRow(
              cells: {
                'Promo': PlutoCell(value: 'ODE'),
                'SM380722': PlutoCell(value: 2),
                'SM680722': PlutoCell(value: 19),
                'SM980722': PlutoCell(value: 31),
                'GrandTotal': PlutoCell(value: 52),
              },
            ),
            PlutoRow(
              cells: {
                'Promo': PlutoCell(value: 'SMI'),
                'SM380722': PlutoCell(value: 0),
                'SM680722': PlutoCell(value: 4),
                'SM980722': PlutoCell(value: 0),
                'GrandTotal': PlutoCell(value: 4),
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
