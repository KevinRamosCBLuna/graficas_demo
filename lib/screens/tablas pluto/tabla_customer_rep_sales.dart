import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/week_provider.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:provider/provider.dart';

class TablaCustomerRepSales extends StatefulWidget {
  const TablaCustomerRepSales({Key? key}) : super(key: key);

  @override
  State<TablaCustomerRepSales> createState() => _TablaCustomerRepSalesState();
}

class _TablaCustomerRepSalesState extends State<TablaCustomerRepSales> {
  @override
  Widget build(BuildContext context) {
    List<double> asaelList = [0, 3, 4, 0, 0, 0, 0],
        jillList = [2, 1, 0, 0, 0, 0, 0],
        rosaliaList = [1, 3, 0, 0, 0, 0, 0],
        rubyList = [3, 2, 0, 0, 0, 0, 0],
        shirleList = [8, 4, 0, 0, 0, 0, 0],
        steveList = [4, 0, 0, 0, 0, 0, 0];
    double screenWidth = MediaQuery.of(context).size.width;
    SendWeek weekProvider = Provider.of<SendWeek>(context);
    if (weekProvider.weekTechUtil == 50) {
      setState(() {
        asaelList = [0, 3, 4, 0, 0, 0, 0];
        jillList = [2, 1, 0, 0, 0, 0, 0];
        rosaliaList = [1, 3, 0, 0, 0, 0, 0];
        rubyList = [3, 2, 0, 0, 0, 0, 0];
        shirleList = [8, 4, 0, 0, 0, 0, 0];
        steveList = [4, 0, 0, 0, 0, 0, 0];
      });
    }
    if (weekProvider.weekTechUtil == 51) {
      setState(() {
        asaelList = [0, 1, 2, 3, 0, 0, 0];
        jillList = [4, 2, 1, 0, 0, 0, 1];
        rosaliaList = [0, 0, 1, 2, 3, 0, 0];
        rubyList = [1, 1, 0, 0, 0, 4, 1];
        shirleList = [0, 1, 0, 0, 4, 1, 0];
        steveList = [2, 0, 0, 0, 2, 0, 6];
      });
    }
    if (weekProvider.weekTechUtil == 52) {
      setState(() {
        asaelList = [0, 0, 1, 2, 4, 0, 0];
        jillList = [2, 1, 0, 0, 0, 3, 1];
        rosaliaList = [1, 3, 0, 1, 0, 2, 0];
        rubyList = [3, 2, 0, 0, 4, 1, 0];
        shirleList = [2, 4, 0, 0, 0, 0, 1];
        steveList = [1, 0, 4, 0, 0, 6, 0];
      });
    }
    late PlutoGridStateManager stateManager;
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
              title: 'Rep',
              field: 'Rep',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Rep',
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
              title: 'Mini Gig (SUM)',
              field: 'Mini Gig (SUM)',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Mini Gig (SUM)',
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
              title: 'Super Gig (SUM)',
              field: 'Super Gig (SUM)',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Super Gig (SUM)',
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
              title: 'Galactic Gig (SUM)',
              field: 'Galactic Gig (SUM)',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Galactic Gig (SUM)',
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
              title: 'TVG1 (SUM)',
              field: 'TVG1 (SUM)',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('TVG1 (SUM)',
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
              title: 'TVG2 (SUM)',
              field: 'TVG2 (SUM)',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('TVG2 (SUM)',
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
              title: 'TVG3 (SUM)',
              field: 'TVG3 (SUM)',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('TVG3 (SUM)',
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
              title: 'Voice (SUM)',
              field: 'Voice (SUM)',
              width: screenWidth / 8,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Voice (SUM)',
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
              fields: ['Rep'],
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
              title: '50',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: ['Mini Gig (SUM)', 'Super Gig (SUM)', 'Galactic Gig (SUM)', 'TVG1 (SUM)', 'TVG2 (SUM)', 'TVG3 (SUM)', 'Voice (SUM)'],
              titleSpan: TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('${weekProvider.weekTechUtil}',
                        style: const TextStyle(
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
                'Rep': PlutoCell(value: 'asael.brancamontes@rtatel.com'),
                'Mini Gig (SUM)': PlutoCell(value: asaelList[0]),
                'Super Gig (SUM)': PlutoCell(value: asaelList[1]),
                'Galactic Gig (SUM)': PlutoCell(value: asaelList[2]),
                'TVG1 (SUM)': PlutoCell(value: asaelList[3]),
                'TVG2 (SUM)': PlutoCell(value: asaelList[4]),
                'TVG3 (SUM)': PlutoCell(value: asaelList[5]),
                'Voice (SUM)': PlutoCell(value: asaelList[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Rep': PlutoCell(value: 'jill.tarango@rtatel.com'),
                'Mini Gig (SUM)': PlutoCell(value: jillList[0]),
                'Super Gig (SUM)': PlutoCell(value: jillList[1]),
                'Galactic Gig (SUM)': PlutoCell(value: jillList[2]),
                'TVG1 (SUM)': PlutoCell(value: jillList[3]),
                'TVG2 (SUM)': PlutoCell(value: jillList[4]),
                'TVG3 (SUM)': PlutoCell(value: jillList[5]),
                'Voice (SUM)': PlutoCell(value: jillList[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Rep': PlutoCell(value: 'rosalie.silvey@rtatel.com'),
                'Mini Gig (SUM)': PlutoCell(value: rosaliaList[0]),
                'Super Gig (SUM)': PlutoCell(value: rosaliaList[1]),
                'Galactic Gig (SUM)': PlutoCell(value: rosaliaList[2]),
                'TVG1 (SUM)': PlutoCell(value: rosaliaList[3]),
                'TVG2 (SUM)': PlutoCell(value: rosaliaList[4]),
                'TVG3 (SUM)': PlutoCell(value: rosaliaList[5]),
                'Voice (SUM)': PlutoCell(value: rosaliaList[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Rep': PlutoCell(value: 'ruby.cagle@rtatel.com'),
                'Mini Gig (SUM)': PlutoCell(value: rubyList[0]),
                'Super Gig (SUM)': PlutoCell(value: rubyList[1]),
                'Galactic Gig (SUM)': PlutoCell(value: rubyList[2]),
                'TVG1 (SUM)': PlutoCell(value: rubyList[3]),
                'TVG2 (SUM)': PlutoCell(value: rubyList[4]),
                'TVG3 (SUM)': PlutoCell(value: rubyList[5]),
                'Voice (SUM)': PlutoCell(value: rubyList[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Rep': PlutoCell(value: 'shirley.seaholm@rtatel.com'),
                'Mini Gig (SUM)': PlutoCell(value: shirleList[0]),
                'Super Gig (SUM)': PlutoCell(value: shirleList[1]),
                'Galactic Gig (SUM)': PlutoCell(value: shirleList[2]),
                'TVG1 (SUM)': PlutoCell(value: shirleList[3]),
                'TVG2 (SUM)': PlutoCell(value: shirleList[4]),
                'TVG3 (SUM)': PlutoCell(value: shirleList[5]),
                'Voice (SUM)': PlutoCell(value: shirleList[6]),
              },
            ),
            PlutoRow(
              cells: {
                'Rep': PlutoCell(value: 'steve.stanley@rtatel.com'),
                'Mini Gig (SUM)': PlutoCell(value: steveList[0]),
                'Super Gig (SUM)': PlutoCell(value: steveList[1]),
                'Galactic Gig (SUM)': PlutoCell(value: steveList[2]),
                'TVG1 (SUM)': PlutoCell(value: steveList[3]),
                'TVG2 (SUM)': PlutoCell(value: steveList[4]),
                'TVG3 (SUM)': PlutoCell(value: steveList[5]),
                'Voice (SUM)': PlutoCell(value: steveList[6]),
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
