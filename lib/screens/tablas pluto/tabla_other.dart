import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/week_provider.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:provider/provider.dart';

class TablaOther extends StatefulWidget {
  const TablaOther({Key? key}) : super(key: key);

  @override
  State<TablaOther> createState() => _TablaOtherState();
}

class _TablaOtherState extends State<TablaOther> {
  @override
  Widget build(BuildContext context) {
    SendWeek weekProvider = Provider.of<SendWeek>(context, listen: true);
    late PlutoGridStateManager stateManager;
    double screenWidth = MediaQuery.of(context).size.width;
    double target = 2400;
    double dj11 = 2,
        dd11 = 55,
        ij11 = 122,
        id11 = 55,
        oj11 = 2,
        od11 = 2,
        sj11 = 912,
        sd11 = 285;
    double dj12 = 2,
        dd12 = 2,
        ij12 = 2,
        id12 = 2,
        oj12 = 2,
        od12 = 2,
        sj12 = 1212,
        sd12 = 322;
    double dj13 = 2,
        dd13 = 2,
        ij13 = 122,
        id13 = 55,
        oj13 = 2,
        od13 = 2,
        sj13 = 912,
        sd13 = 285;
    double dj14 = 2,
        dd14 = 55,
        ij14 = 122,
        id14 = 55,
        oj14 = 2,
        od14 = 2,
        sj14 = 912,
        sd14 = 285;
    double dj15 = 2,
        dd15 = 55,
        ij15 = 122,
        id15 = 55,
        oj15 = 2,
        od15 = 2,
        sj15 = 912,
        sd15 = 285;
    double dj16 = 2,
        dd16 = 55,
        ij16 = 122,
        id16 = 55,
        oj16 = 2,
        od16 = 2,
        sj16 = 912,
        sd16 = 285;

    if (weekProvider.weekOther == 50) {
      dj11 = 182;
      dd11 = 55;
      ij11 = 122;
      id11 = 55;
      oj11 = 2;
      od11 = 0;
      sj11 = 910;
      sd11 = 285;
      dj12 = 8;
      dd12 = 0;
      ij12 = 0;
      id12 = 0;
      oj12 = 0;
      od12 = 0;
      sj12 = 1210;
      sd12 = 300;
      dj13 = 0;
      dd13 = 0;
      ij13 = 120;
      id13 = 55;
      oj13 = 0;
      od13 = 0;
      sj13 = 910;
      sd13 = 285;
      dj14 = 180;
      dd14 = 55;
      ij14 = 120;
      id14 = 55;
      oj14 = 0;
      od14 = 0;
      sj14 = 910;
      sd14 = 285;
      dj15 = 180;
      dd15 = 55;
      ij15 = 120;
      id15 = 55;
      oj15 = 0;
      od15 = 0;
      sj15 = 910;
      sd15 = 285;
      dj16 = 180;
      dd16 = 55;
      ij16 = 120;
      id16 = 55;
      oj16 = 0;
      od16 = 0;
      sj16 = 910;
      sd16 = 285;
    }

    if (weekProvider.weekOther == 51) {
      dj11 = 12;
      dd11 = 55;
      ij11 = 120;
      id11 = 55;
      oj11 = 0;
      od11 = 0;
      sj11 = 910;
      sd11 = 285;
      dj12 = 123;
      dd12 = 0;
      ij12 = 0;
      id12 = 0;
      oj12 = 0;
      od12 = 0;
      sj12 = 1210;
      sd12 = 300;
      dj13 = 0;
      dd13 = 0;
      ij13 = 120;
      id13 = 55;
      oj13 = 0;
      od13 = 0;
      sj13 = 910;
      sd13 = 285;
      dj14 = 5;
      dd14 = 55;
      ij14 = 120;
      id14 = 55;
      oj14 = 0;
      od14 = 0;
      sj14 = 910;
      sd14 = 285;
      dj15 = 43;
      dd15 = 55;
      ij15 = 120;
      id15 = 55;
      oj15 = 0;
      od15 = 0;
      sj15 = 910;
      sd15 = 285;
      dj16 = 123;
      dd16 = 55;
      ij16 = 120;
      id16 = 55;
      oj16 = 0;
      od16 = 0;
      sj16 = 910;
      sd16 = 285;
    }

    if (weekProvider.weekOther == 52) {
      setState(() {
        dj11 = 41;
        dd11 = 55;
        ij11 = 120;
        id11 = 55;
        oj11 = 0;
        od11 = 0;
        sj11 = 910;
        sd11 = 285;
        dj12 = 43;
        dd12 = 0;
        ij12 = 0;
        id12 = 0;
        oj12 = 0;
        od12 = 0;
        sj12 = 1210;
        sd12 = 300;
        dj13 = 23;
        dd13 = 0;
        ij13 = 120;
        id13 = 55;
        oj13 = 0;
        od13 = 0;
        sj13 = 910;
        sd13 = 285;
        dj14 = 23;
        dd14 = 55;
        ij14 = 120;
        id14 = 55;
        oj14 = 0;
        od14 = 0;
        sj14 = 910;
        sd14 = 285;
        dj15 = 12;
        dd15 = 55;
        ij15 = 120;
        id15 = 55;
        oj15 = 0;
        od15 = 0;
        sj15 = 910;
        sd15 = 285;
        dj16 = 1;
        dd16 = 55;
        ij16 = 120;
        id16 = 55;
        oj16 = 0;
        od16 = 0;
        sj16 = 910;
        sd16 = 285;
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
              title: 'JobTimeDis',
              field: 'JobTimeDis',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Job Time',
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
            PlutoColumn(
              title: 'DriveTimeDis',
              field: 'DriveTimeDis',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Drive Time',
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
            PlutoColumn(
              title: 'JobTimeIns',
              field: 'JobTimeIns',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Job Time',
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
            PlutoColumn(
              title: 'DriveTimeIns',
              field: 'DriveTimeIns',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Drive Time',
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
            PlutoColumn(
              title: 'JobTimeOth',
              field: 'JobTimeOth',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Job Time',
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
            PlutoColumn(
              title: 'DriveTimeOth',
              field: 'DriveTimeOth',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Drive Time',
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
            PlutoColumn(
              title: 'JobTimeSer',
              field: 'JobTimeSer',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Job Time',
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
            PlutoColumn(
              title: 'DriveTimeSer',
              field: 'DriveTimeSer',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Drive Time',
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
            PlutoColumn(
              title: 'TotalJobTime',
              field: 'TotalJobTime',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Total Job Time',
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
            PlutoColumn(
              title: 'TotalDriveTime',
              field: 'TotalDriveTime',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Total Drive Time',
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
            PlutoColumn(
              title: 'TotalTime',
              field: 'TotalTime',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Total Time',
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
            PlutoColumn(
              title: 'TargetUtilization',
              field: 'TargetUtilization',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('Target Utilization',
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
            PlutoColumn(
              title: 'Utilization',
              field: 'Utilization',
              width: screenWidth / 14,
              titleSpan: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Text('% Utilization',
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
          columnGroups: [
            PlutoColumnGroup(
              title: '',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: ['Name'],
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
            ),
            PlutoColumnGroup(
              title: 'Disconnect',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: [
                'JobTimeDis',
                'DriveTimeDis',
              ],
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
            ),
            PlutoColumnGroup(
              title: 'Install',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: [
                'JobTimeIns',
                'DriveTimeIns',
              ],
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
            ),
            PlutoColumnGroup(
              title: 'Other',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: ['JobTimeOth', 'DriveTimeOth'],
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
            ),
            PlutoColumnGroup(
              title: 'Service',
              backgroundColor: const Color(0xFF2E6FC5),
              fields: ['JobTimeSer', 'DriveTimeSer'],
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
            )
          ],
          rows: [
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Fiber Team - Construction'),
                'JobTimeDis': PlutoCell(value: dj11),
                'DriveTimeDis': PlutoCell(value: dd11),
                'JobTimeIns': PlutoCell(value: ij11),
                'DriveTimeIns': PlutoCell(value: id11),
                'JobTimeOth': PlutoCell(value: oj11),
                'DriveTimeOth': PlutoCell(value: od11),
                'JobTimeSer': PlutoCell(value: sj11),
                'DriveTimeSer': PlutoCell(value: sd11),
                'TotalJobTime': PlutoCell(value: dj11 + ij11 + oj11 + sj11),
                'TotalDriveTime': PlutoCell(value: dd11 + id11 + od11 + sd11),
                'TotalTime': PlutoCell(
                    value:
                        dj11 + ij11 + oj11 + sj11 + dd11 + id11 + od11 + sd11),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(
                    value: (((dj11 +
                                    ij11 +
                                    oj11 +
                                    sj11 +
                                    dd11 +
                                    id11 +
                                    od11 +
                                    sd11) /
                                target) *
                            100)
                        .round()),
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Jeff Simmons - Security'),
                'JobTimeDis': PlutoCell(value: dj12),
                'DriveTimeDis': PlutoCell(value: dd12),
                'JobTimeIns': PlutoCell(value: ij12),
                'DriveTimeIns': PlutoCell(value: id12),
                'JobTimeOth': PlutoCell(value: oj12),
                'DriveTimeOth': PlutoCell(value: od12),
                'JobTimeSer': PlutoCell(value: sj12),
                'DriveTimeSer': PlutoCell(value: sd12),
                'TotalJobTime': PlutoCell(value: dj12 + ij12 + oj12 + sj12),
                'TotalDriveTime': PlutoCell(value: dd12 + id12 + od12 + sd12),
                'TotalTime': PlutoCell(
                    value:
                        dj12 + ij12 + oj12 + sj12 + dd12 + id12 + od12 + sd12),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(
                    value: (((dj12 +
                                    ij12 +
                                    oj12 +
                                    sj12 +
                                    dd12 +
                                    id12 +
                                    od12 +
                                    sd12) /
                                target) *
                            100)
                        .round()),
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Joseph Aycock - Mgr'),
                'JobTimeDis': PlutoCell(value: dj13),
                'DriveTimeDis': PlutoCell(value: dd13),
                'JobTimeIns': PlutoCell(value: ij13),
                'DriveTimeIns': PlutoCell(value: id13),
                'JobTimeOth': PlutoCell(value: oj13),
                'DriveTimeOth': PlutoCell(value: od13),
                'JobTimeSer': PlutoCell(value: sj13),
                'DriveTimeSer': PlutoCell(value: sd13),
                'TotalJobTime': PlutoCell(value: dj13 + ij13 + oj13 + sj13),
                'TotalDriveTime': PlutoCell(value: dd13 + id13 + od13 + sd13),
                'TotalTime': PlutoCell(
                    value: dj13 + ij13 + oj13 + sj13 + dd13 + id13 + od13 + sd13),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(
                    value: (((dj13 +
                                    ij13 +
                                    oj13 +
                                    sj13 +
                                    dd13 +
                                    id13 +
                                    od13 +
                                    sd13) /
                                target) *
                            100)
                        .round()),
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Tim McClaine - other project'),
                'JobTimeDis': PlutoCell(value: dj14),
                'DriveTimeDis': PlutoCell(value: dd14),
                'JobTimeIns': PlutoCell(value: ij14),
                'DriveTimeIns': PlutoCell(value: id14),
                'JobTimeOth': PlutoCell(value: oj14),
                'DriveTimeOth': PlutoCell(value: od14),
                'JobTimeSer': PlutoCell(value: sj14),
                'DriveTimeSer': PlutoCell(value: sd14),
                'TotalJobTime': PlutoCell(value: dj14 + ij14 + oj14 + sj14),
                'TotalDriveTime': PlutoCell(value: dd14 + id14 + od14 + sd14),
                'TotalTime': PlutoCell(
                    value: dj14 + ij14 + oj14 + sj14 + dd14 + id14 + od14 + sd14),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(
                    value: (((dj14 + ij14 + oj14 + sj14 + dd14 + id14 + od14 + sd14) /
                                target) *
                            100)
                        .round()),
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Kamrin Lilley - fiber const'),
                'JobTimeDis': PlutoCell(value: dj15),
                'DriveTimeDis': PlutoCell(value: dd15),
                'JobTimeIns': PlutoCell(value: ij15),
                'DriveTimeIns': PlutoCell(value: id15),
                'JobTimeOth': PlutoCell(value: oj15),
                'DriveTimeOth': PlutoCell(value: od15),
                'JobTimeSer': PlutoCell(value: sj15),
                'DriveTimeSer': PlutoCell(value: sd15),
                'TotalJobTime': PlutoCell(value: dj15 + ij15 + oj15 + sj15),
                'TotalDriveTime': PlutoCell(value: dd15 + id15 + od15 + sd15),
                'TotalTime': PlutoCell(
                    value: dj15 + ij15 + oj15 + sj15 + dd15 + id15 + od15 + sd15),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(
                    value: (((dj15 + ij15 + oj15 + sj15 + dd15 + id15 + od15 + sd15) /
                                target) *
                            100)
                        .round()),
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Team 4 - other'),
                'JobTimeDis': PlutoCell(value: dj16),
                'DriveTimeDis': PlutoCell(value: dd16),
                'JobTimeIns': PlutoCell(value: ij16),
                'DriveTimeIns': PlutoCell(value: id16),
                'JobTimeOth': PlutoCell(value: oj16),
                'DriveTimeOth': PlutoCell(value: od16),
                'JobTimeSer': PlutoCell(value: sj16),
                'DriveTimeSer': PlutoCell(value: sd16),
                'TotalJobTime': PlutoCell(value: dj16 + ij16 + oj16 + sj16),
                'TotalDriveTime': PlutoCell(value: dd16 + id16 + od16 + sd16),
                'TotalTime': PlutoCell(
                    value: dj16 + ij16 + oj16 + sj16 + dd16 + id16 + od16 + sd16),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(
                    value: (((dj16 + ij16 + oj16 + sj16 + dd16 + id16 + od16 + sd16) /
                                target) *
                            100)
                        .round()),
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
