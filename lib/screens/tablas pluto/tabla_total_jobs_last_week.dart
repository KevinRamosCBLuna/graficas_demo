import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/week_provider.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:provider/provider.dart';

class TablaTotalJobsLastWeek extends StatefulWidget {
  const TablaTotalJobsLastWeek({Key? key}) : super(key: key);

  @override
  State<TablaTotalJobsLastWeek> createState() => _TablaTotalJobsLastWeekState();
}

class _TablaTotalJobsLastWeekState extends State<TablaTotalJobsLastWeek> {
  @override
  Widget build(BuildContext context) {
    SendWeek weekProvider = Provider.of<SendWeek>(context, listen: true);
    late PlutoGridStateManager stateManager;
    double screenWidth = MediaQuery.of(context).size.width;
    List<double> primero = [1, 2, 3, 4];
    List<double> segundo = [2, 4, 12, 6];
    List<double> tercero = [3, 6, 9, 8];
    List<double> cuarto = [4, 8, 6, 10];
    List<double> quinto = [5, 10, 3, 12];
    List<double> sexto = [6, 12, 0, 14];
    List<double> septimo = [7, 14, 0, 16];
    List<double> octavo = [8, 16, 0, 18];
    List<double> noveno = [9, 18, 0, 20];
    List<double> decimo = [10, 20, 0, 22];
    List<double> onceavo = [11, 22, 0, 24];
    List<double> doceavo = [12, 24, 0, 26];
    List<double> treceavo = [13, 26, 0, 28];
    List<double> catorceavo = [14, 28, 0, 30];
    List<double> quinceavo = [15, 30, 0, 32];
    List<double> dieciseis = [2, 1, 6, 8];
    if (weekProvider.totalJobsWeek == 50) {
      setState(() {
        primero = [4, 12, 43, 32];
        segundo = [1, 4, 5, 12];
        tercero = [53, 1, 2, 4];
        cuarto = [14, 38, 4, 5];
        quinto = [5, 10, 3, 12];
        sexto = [6, 12, 0, 14];
        septimo = [7, 14, 0, 16];
        octavo = [8, 16, 0, 18];
        noveno = [9, 18, 0, 20];
        decimo = [10, 20, 0, 22];
        onceavo = [11, 22, 0, 24];
        doceavo = [12, 24, 0, 26];
        treceavo = [13, 26, 0, 28];
        catorceavo = [14, 28, 0, 30];
        quinceavo = [15, 30, 0, 32];
        dieciseis = [2, 1, 6, 18];
      });
    }

    if (weekProvider.totalJobsWeek == 51) {
      setState(() {
        primero = [2, 3, 4, 1];
        segundo = [14, 1, 6, 32];
        tercero = [6, 4, 5, 4];
        cuarto = [7, 38, 4, 5];
        quinto = [5, 10, 3, 12];
        sexto = [6, 12, 0, 14];
        septimo = [7, 14, 0, 16];
        octavo = [8, 16, 0, 18];
        noveno = [9, 18, 0, 20];
        decimo = [10, 20, 0, 22];
        onceavo = [11, 22, 0, 24];
        doceavo = [12, 24, 0, 26];
        treceavo = [13, 26, 0, 28];
        catorceavo = [14, 28, 0, 30];
        quinceavo = [15, 30, 0, 32];
        dieciseis = [13, 1, 6, 18];
      });
    }

    if (weekProvider.totalJobsWeek == 52) {
      setState(() {
        primero = [1, 1, 1, 1];
        segundo = [1, 4, 5, 12];
        tercero = [53, 1, 2, 4];
        cuarto = [14, 38, 4, 5];
        quinto = [5, 10, 3, 12];
        sexto = [6, 12, 0, 14];
        septimo = [7, 14, 0, 16];
        octavo = [8, 16, 0, 18];
        noveno = [9, 18, 0, 20];
        decimo = [10, 20, 0, 22];
        onceavo = [11, 22, 0, 24];
        doceavo = [12, 24, 0, 26];
        treceavo = [13, 3, 0, 28];
        catorceavo = [14, 5, 0, 30];
        quinceavo = [15, 6, 0, 8];
        dieciseis = [6, 7, 8, 8];
      });
    }

    return Material(
      color: Colors.white,
      child: /*providertablero.listasTabla.isEmpty
          ? const CircularProgressIndicator()
          : */
          SizedBox(
        height: 400,
        width: screenWidth / 2.35,
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
              title: 'Name',
              field: 'Name',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Name',
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
                      const TextSpan(
                          text: 'Total General',
                          style: (TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'Disconnect',
              field: 'Disconnect',
              width: screenWidth / 14,
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
              type: PlutoColumnType.text(),
              enableEditingMode: false,
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.count,
                  alignment: Alignment.center,
                  titleSpanBuilder: (text) {
                    return [
                      TextSpan(
                          text: (primero[0] +
                                  segundo[0] +
                                  tercero[0] +
                                  cuarto[0] +
                                  quinto[0] +
                                  sexto[0] +
                                  septimo[0] +
                                  octavo[0] +
                                  noveno[0] +
                                  decimo[0] +
                                  onceavo[0] +
                                  doceavo[0] +
                                  treceavo[0] +
                                  catorceavo[0] +
                                  quinceavo[0] +
                                  dieciseis[0])
                              .toString(),
                          style: (const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'Install',
              field: 'Install',
              width: screenWidth / 14,
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
              type: PlutoColumnType.text(),
              enableEditingMode: false,
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.count,
                  alignment: Alignment.center,
                  titleSpanBuilder: (text) {
                    return [
                      TextSpan(
                          text: (primero[1] +
                                  segundo[1] +
                                  tercero[1] +
                                  cuarto[1] +
                                  quinto[1] +
                                  sexto[1] +
                                  septimo[1] +
                                  octavo[1] +
                                  noveno[1] +
                                  decimo[1] +
                                  onceavo[1] +
                                  doceavo[1] +
                                  treceavo[1] +
                                  catorceavo[1] +
                                  quinceavo[1] +
                                  dieciseis[1])
                              .toString(),
                          style: (const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'Other',
              field: 'Other',
              width: screenWidth / 14,
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
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.count,
                  alignment: Alignment.center,
                  titleSpanBuilder: (text) {
                    return [
                      TextSpan(
                          text: (primero[2] +
                                  segundo[2] +
                                  tercero[2] +
                                  cuarto[2] +
                                  quinto[2] +
                                  sexto[2] +
                                  septimo[2] +
                                  octavo[2] +
                                  noveno[2] +
                                  decimo[2] +
                                  onceavo[2] +
                                  doceavo[2] +
                                  treceavo[2] +
                                  catorceavo[2] +
                                  quinceavo[2] +
                                  dieciseis[2])
                              .toString(),
                          style: (const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'Service',
              field: 'Service',
              width: screenWidth / 14,
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
              footerRenderer: (rendererContext) {
                return PlutoAggregateColumnFooter(
                  rendererContext: rendererContext,
                  type: PlutoAggregateColumnType.count,
                  alignment: Alignment.center,
                  titleSpanBuilder: (text) {
                    return [
                      TextSpan(
                          text: (primero[3] +
                                  segundo[3] +
                                  tercero[3] +
                                  cuarto[3] +
                                  quinto[3] +
                                  sexto[3] +
                                  septimo[3] +
                                  octavo[3] +
                                  noveno[3] +
                                  decimo[3] +
                                  onceavo[3] +
                                  doceavo[3] +
                                  treceavo[3] +
                                  catorceavo[3] +
                                  quinceavo[3] +
                                  dieciseis[3])
                              .toString(),
                          style: (const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'Grand Total',
              field: 'Grand Total',
              width: screenWidth / 14,
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
                      TextSpan(
                          text: text,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
          ],
          rows: [
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Adam Biliot'),
                'Disconnect': PlutoCell(value: primero[0]),
                'Install': PlutoCell(value: primero[1]),
                'Other': PlutoCell(value: primero[2]),
                'Service': PlutoCell(value: primero[3]),
                'Grand Total': PlutoCell(
                  value: ((primero[0] + primero[1] + primero[2] + primero[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Alex Ogle'),
                'Disconnect': PlutoCell(value: segundo[0]),
                'Install': PlutoCell(value: segundo[1]),
                'Other': PlutoCell(value: segundo[2]),
                'Service': PlutoCell(value: segundo[3]),
                'Grand Total': PlutoCell(
                  value: ((segundo[0] + segundo[1] + segundo[2] + segundo[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Ben Cartlidge'),
                'Disconnect': PlutoCell(value: tercero[0]),
                'Install': PlutoCell(value: tercero[1]),
                'Other': PlutoCell(value: tercero[2]),
                'Service': PlutoCell(value: tercero[3]),
                'Grand Total': PlutoCell(
                  value: ((tercero[0] + tercero[1] + tercero[2] + tercero[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Brandon Murdock'),
                'Disconnect': PlutoCell(value: cuarto[0]),
                'Install': PlutoCell(value: cuarto[1]),
                'Other': PlutoCell(value: cuarto[2]),
                'Service': PlutoCell(value: cuarto[3]),
                'Grand Total': PlutoCell(
                  value: ((cuarto[0] + cuarto[1] + cuarto[2] + cuarto[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Dylan Hamil'),
                'Disconnect': PlutoCell(value: quinto[0]),
                'Install': PlutoCell(value: quinto[1]),
                'Other': PlutoCell(value: quinto[2]),
                'Service': PlutoCell(value: quinto[3]),
                'Grand Total': PlutoCell(
                  value: ((quinto[0] + quinto[1] + quinto[2] + quinto[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Joseph Thomson'),
                'Disconnect': PlutoCell(value: sexto[0]),
                'Install': PlutoCell(value: sexto[1]),
                'Other': PlutoCell(value: sexto[2]),
                'Service': PlutoCell(value: sexto[3]),
                'Grand Total': PlutoCell(
                  value: ((sexto[0] + sexto[1] + sexto[2] + sexto[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Larry Phillips'),
                'Disconnect': PlutoCell(value: septimo[0]),
                'Install': PlutoCell(value: septimo[1]),
                'Other': PlutoCell(value: septimo[2]),
                'Service': PlutoCell(value: septimo[3]),
                'Grand Total': PlutoCell(
                  value: ((septimo[0] + septimo[1] + septimo[2] + septimo[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Team 1'),
                'Disconnect': PlutoCell(value: octavo[0]),
                'Install': PlutoCell(value: octavo[1]),
                'Other': PlutoCell(value: octavo[2]),
                'Service': PlutoCell(value: octavo[3]),
                'Grand Total': PlutoCell(
                  value: ((octavo[0] + octavo[1] + octavo[2] + octavo[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Team 2'),
                'Disconnect': PlutoCell(value: noveno[0]),
                'Install': PlutoCell(value: noveno[1]),
                'Other': PlutoCell(value: noveno[2]),
                'Service': PlutoCell(value: noveno[3]),
                'Grand Total': PlutoCell(
                  value: ((noveno[0] + noveno[1] + noveno[2] + noveno[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Terry Isreal'),
                'Disconnect': PlutoCell(value: decimo[0]),
                'Install': PlutoCell(value: decimo[1]),
                'Other': PlutoCell(value: decimo[2]),
                'Service': PlutoCell(value: decimo[3]),
                'Grand Total': PlutoCell(
                  value: ((decimo[0] + decimo[1] + decimo[2] + decimo[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Fiber Team - Construction'),
                'Disconnect': PlutoCell(value: onceavo[0]),
                'Install': PlutoCell(value: onceavo[1]),
                'Other': PlutoCell(value: onceavo[2]),
                'Service': PlutoCell(value: onceavo[3]),
                'Grand Total': PlutoCell(
                  value: ((onceavo[0] + onceavo[1] + onceavo[2] + onceavo[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Jeff Simmons - Security'),
                'Disconnect': PlutoCell(value: doceavo[0]),
                'Install': PlutoCell(value: doceavo[1]),
                'Other': PlutoCell(value: doceavo[2]),
                'Service': PlutoCell(value: doceavo[3]),
                'Grand Total': PlutoCell(
                  value: ((doceavo[0] + doceavo[1] + doceavo[2] + doceavo[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Joseph Aycock - Mgr'),
                'Disconnect': PlutoCell(value: treceavo[0]),
                'Install': PlutoCell(value: treceavo[1]),
                'Other': PlutoCell(value: treceavo[2]),
                'Service': PlutoCell(value: treceavo[3]),
                'Grand Total': PlutoCell(
                  value:
                      ((treceavo[0] + treceavo[1] + treceavo[2] + treceavo[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Tim McClaine - other project'),
                'Disconnect': PlutoCell(value: catorceavo[0]),
                'Install': PlutoCell(value: catorceavo[1]),
                'Other': PlutoCell(value: catorceavo[2]),
                'Service': PlutoCell(value: catorceavo[3]),
                'Grand Total': PlutoCell(
                  value: ((catorceavo[0] +
                      catorceavo[1] +
                      catorceavo[2] +
                      catorceavo[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Kamrin Lilley - fiber const'),
                'Disconnect': PlutoCell(value: quinceavo[0]),
                'Install': PlutoCell(value: quinceavo[1]),
                'Other': PlutoCell(value: quinceavo[2]),
                'Service': PlutoCell(value: quinceavo[3]),
                'Grand Total': PlutoCell(
                  value: ((quinceavo[0] +
                      quinceavo[1] +
                      quinceavo[2] +
                      quinceavo[3])),
                )
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Team 4 - other'),
                'Disconnect': PlutoCell(value: dieciseis[0]),
                'Install': PlutoCell(value: dieciseis[1]),
                'Other': PlutoCell(value: dieciseis[2]),
                'Service': PlutoCell(value: dieciseis[3]),
                'Grand Total': PlutoCell(
                  value: ((dieciseis[0] +
                      dieciseis[1] +
                      dieciseis[2] +
                      dieciseis[3])),
                )
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
