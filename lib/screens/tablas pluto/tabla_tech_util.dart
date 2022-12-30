import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/week_provider.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:provider/provider.dart';

class TablaTechUtil extends StatefulWidget {
  const TablaTechUtil({Key? key}) : super(key: key);

  @override
  State<TablaTechUtil> createState() => _TablaTechUtilState();
}

class _TablaTechUtilState extends State<TablaTechUtil> {
  @override
  Widget build(BuildContext context) {
        SendWeek week_provider = Provider.of<SendWeek>(context, listen: true);
    late PlutoGridStateManager stateManager;
double screenWidth = MediaQuery.of(context).size.width;
    double target = 2400; 
    double dj1 = 0, dd1 = 55, ij1 = 120, id1 = 55, oj1 = 0, od1= 0, sj1 = 910, sd1 = 285;
       double dj2 = 0, dd2 = 0, ij2 = 0, id2 = 0, oj2 = 0, od2 = 0, sj2 = 1210, sd2 = 300;
       double dj3 = 0, dd3 = 0, ij3 = 120, id3 = 55, oj3 = 0, od3 = 0, sj3 = 910, sd3 = 285;
       double dj4 =0, dd4 = 55, ij4 = 120, id4 = 55, oj4 = 0, od4 = 0, sj4 = 910, sd4 = 285;
       double dj5 =0, dd5 = 55, ij5 = 120, id5 = 55, oj5 = 0, od5 = 0, sj5 = 910, sd5 = 285;
       double dj6 =0, dd6 = 55, ij6 = 120, id6 = 55, oj6 = 0, od6 = 0, sj6 = 910, sd6 = 285;
       double dj7 =0, dd7 = 55, ij7 = 120, id7 = 55, oj7 = 0, od7 = 0, sj7 = 910, sd7 = 285;
       double dj8 =0, dd8 = 55, ij8 = 120, id8 = 55, oj8 = 0, od8 = 0, sj8 = 910, sd8 = 285;
       double dj9 =0, dd9 = 55, ij9 = 120, id9 = 55, oj9 = 0, od9 = 0, sj9 = 910, sd9 = 285;
       double dj10 = 0, dd10 = 55, ij10 = 120, id10 = 55, oj10 = 0, od10 = 0, sj10 = 910, sd10 = 285;


    if (week_provider.weekTechUtil == 50) {
    dj1 = 180; dd1 = 55; ij1 = 120; id1 = 55; oj1 = 0; od1= 0; sj1 = 910; sd1 = 285;
     dj2 = 0; dd2 = 0; ij2 = 0; id2 = 0; oj2 = 0; od2 = 0; sj2 = 1210; sd2 = 300;
     dj3 = 0; dd3 = 0; ij3 = 120; id3 = 55; oj3 = 0; od3 = 0; sj3 = 910; sd3 = 285;
     dj4 = 180; dd4 = 55; ij4 = 120; id4 = 55; oj4 = 0; od4 = 0; sj4 = 910; sd4 = 285;
     dj5 = 180; dd5 = 55; ij5 = 120; id5 = 55; oj5 = 0; od5 = 0; sj5 = 910; sd5 = 285;
     dj6 = 180; dd6 = 55; ij6 = 120; id6 = 55; oj6 = 0; od6 = 0; sj6 = 910; sd6 = 285;
     dj7 = 180; dd7 = 55; ij7 = 120; id7 = 55; oj7 = 0; od7 = 0; sj7 = 910; sd7 = 285;
     dj8 = 180; dd8 = 55; ij8 = 120; id8 = 55; oj8 = 0; od8 = 0; sj8 = 910; sd8 = 285;
     dj9 = 180; dd9 = 55; ij9 = 120; id9 = 55; oj9 = 0; od9 = 0; sj9 = 910; sd9 = 285;
     dj10 = 180; dd10 = 55; ij10 = 120; id10 = 55; oj10 = 0; od10 = 0; sj10 = 910; sd10 = 285;
    }

      if (week_provider.weekTechUtil == 51) {
      dj1 = 341; dd1 = 55; ij1 = 120; id1 = 55; oj1 = 0; od1= 0; sj1 = 910; sd1 = 285;
       dj2 = 123; dd2 = 0; ij2 = 0; id2 = 0; oj2 = 0; od2 = 0; sj2 = 1210; sd2 = 300;
       dj3 = 0; dd3 = 0; ij3 = 120; id3 = 55; oj3 = 0; od3 = 0; sj3 = 910; sd3 = 285;
       dj4 = 5; dd4 = 55; ij4 = 120; id4 = 55; oj4 = 0; od4 = 0; sj4 = 910; sd4 = 285;
       dj5 = 43; dd5 = 55; ij5 = 120; id5 = 55; oj5 = 0; od5 = 0; sj5 = 910; sd5 = 285;
       dj6 = 123; dd6 = 55; ij6 = 120; id6 = 55; oj6 = 0; od6 = 0; sj6 = 910; sd6 = 285;
       dj7 = 12; dd7 = 55; ij7 = 120; id7 = 55; oj7 = 0; od7 = 0; sj7 = 910; sd7 = 285;
       dj8 = 43; dd8 = 55; ij8 = 120; id8 = 55; oj8 = 0; od8 = 0; sj8 = 910; sd8 = 285;
       dj9 = 53; dd9 = 55; ij9 = 120; id9 = 55; oj9 = 0; od9 = 0; sj9 = 910; sd9 = 285;
       dj10 = 123; dd10 = 55; ij10 = 120; id10 = 55; oj10 = 0; od10 = 0; sj10 = 910; sd10 = 285;
    }
    
     if (week_provider.weekTechUtil == 52) {
      setState(() {
         dj1 = 12; dd1 = 55; ij1 = 120; id1 = 55; oj1 = 0; od1= 0; sj1 = 910; sd1 = 285;
     dj2 = 43; dd2 = 0; ij2 = 0; id2 = 0; oj2 = 0; od2 = 0; sj2 = 1210; sd2 = 300;
     dj3 = 23; dd3 = 0; ij3 = 120; id3 = 55; oj3 = 0; od3 = 0; sj3 = 910; sd3 = 285;
     dj4 = 23; dd4 = 55; ij4 = 120; id4 = 55; oj4 = 0; od4 = 0; sj4 = 910; sd4 = 285;
     dj5 = 12; dd5 = 55; ij5 = 120; id5 = 55; oj5 = 0; od5 = 0; sj5 = 910; sd5 = 285;
     dj6 = 1; dd6 = 55; ij6 = 120; id6 = 55; oj6 = 0; od6 = 0; sj6 = 910; sd6 = 285;
     dj7 = 12; dd7 = 55; ij7 = 120; id7 = 55; oj7 = 0; od7 = 0; sj7 = 910; sd7 = 285;
     dj8 = 121; dd8 = 55; ij8 = 120; id8 = 55; oj8 = 0; od8 = 0; sj8 = 910; sd8 = 285;
     dj9 = 42; dd9 = 55; ij9 = 120; id9 = 55; oj9 = 0; od9 = 0; sj9 = 910; sd9 = 285;
     dj10 = 13; dd10 = 55; ij10 = 120; id10 = 55; oj10 = 0; od10 = 0; sj10 = 910; sd10 = 285;
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
              width: screenWidth /14,
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
                      const TextSpan(text: 'Total General', style: (TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'JobTimeDis',
              field: 'JobTimeDis',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'DriveTimeDis',
              field: 'DriveTimeDis',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'JobTimeIns',
              field: 'JobTimeIns',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'DriveTimeIns',
              field: 'DriveTimeIns',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'JobTimeOth',
              field: 'JobTimeOth',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'DriveTimeOth',
              field: 'DriveTimeOth',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'JobTimeSer',
              field: 'JobTimeSer',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'DriveTimeSer',
              field: 'DriveTimeSer',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'TotalJobTime',
              field: 'TotalJobTime',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'TotalDriveTime',
              field: 'TotalDriveTime',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'TotalTime',
              field: 'TotalTime',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'TargetUtilization',
              field: 'TargetUtilization',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                    ];
                  },
                );
              },
            ),
            PlutoColumn(
              title: 'Utilization',
              field: 'Utilization',
              width: screenWidth /14,
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
                      TextSpan(text: text, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
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
                'Name': PlutoCell(value: 'Adam Biliot'),
                'JobTimeDis': PlutoCell(value: dj1),
                'DriveTimeDis': PlutoCell(value: dd1),
                'JobTimeIns': PlutoCell(value: ij1 ),
                'DriveTimeIns': PlutoCell(value: id1),
                'JobTimeOth': PlutoCell(value: oj1),
                'DriveTimeOth': PlutoCell(value: od1),
                'JobTimeSer': PlutoCell(value: sj1),
                'DriveTimeSer': PlutoCell(value: sd1),
                'TotalJobTime': PlutoCell(value: dj1 + ij1 + oj1 + sj1),
                'TotalDriveTime': PlutoCell(value: dd1 + id1 + od1 + sd1),
                'TotalTime': PlutoCell(value: dj1 + ij1 + oj1 + sj1 + dd1 + id1 + od1 + sd1 ),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(value: (((dj1 + ij1 + oj1 + sj1 + dd1 + id1 + od1 + sd1) / target) * 100).round()),
              },
            ),
            PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Alex Ogle'),
            'JobTimeDis': PlutoCell(value: dj2),
                'DriveTimeDis': PlutoCell(value: dd2),
                'JobTimeIns': PlutoCell(value: ij2 ),
                'DriveTimeIns': PlutoCell(value: id2),
                'JobTimeOth': PlutoCell(value: oj2),
                'DriveTimeOth': PlutoCell(value: od2),
                'JobTimeSer': PlutoCell(value: sj2),
                'DriveTimeSer': PlutoCell(value: sd2),
                'TotalJobTime': PlutoCell(value: dj2 + ij2 + oj2 + sj2),
                'TotalDriveTime': PlutoCell(value: dd2 + id2 + od2 + sd2),
                'TotalTime': PlutoCell(value: dj2 + ij2 + oj2 + sj2 + dd2 + id2 + od2 + sd2 ),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(value: (((dj2 + ij2 + oj2 + sj2 + dd2 + id2 + od2 + sd2) / target) * 100).round()),
              },
            ),
                 PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Ben Cartlidge'),
               'JobTimeDis': PlutoCell(value: dj3),
                'DriveTimeDis': PlutoCell(value: dd3),
                'JobTimeIns': PlutoCell(value: ij3 ),
                'DriveTimeIns': PlutoCell(value: id3),
                'JobTimeOth': PlutoCell(value: oj3),
                'DriveTimeOth': PlutoCell(value: od3),
                'JobTimeSer': PlutoCell(value: sj3),
                'DriveTimeSer': PlutoCell(value: sd3),
                'TotalJobTime': PlutoCell(value: dj3 + ij3 + oj3 + sj3),
                'TotalDriveTime': PlutoCell(value: dd3 + id3 + od3 + sd3),
                'TotalTime': PlutoCell(value: dj3 + ij3 + oj3 + sj3 + dd3 + id3 + od3 + sd3 ),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(value: (((dj3 + ij3 + oj3 + sj3 + dd3 + id3 + od3 + sd3) / target) * 100).round()),
              },
            ),
                 PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Brandon Murdock'),
        'JobTimeDis': PlutoCell(value: dj4),
                'DriveTimeDis': PlutoCell(value: dd4),
                'JobTimeIns': PlutoCell(value: ij4 ),
                'DriveTimeIns': PlutoCell(value: id4),
                'JobTimeOth': PlutoCell(value: oj4),
                'DriveTimeOth': PlutoCell(value: od4),
                'JobTimeSer': PlutoCell(value: sj4),
                'DriveTimeSer': PlutoCell(value: sd4),
                'TotalJobTime': PlutoCell(value: dj4 + ij4 + oj4 + sj4),
                'TotalDriveTime': PlutoCell(value: dd4 + id4 + od4 + sd4),
                'TotalTime': PlutoCell(value: dj4 + ij4 + oj4 + sj4 + dd4 + id4 + od4 + sd4 ),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(value: (((dj4 + ij4 + oj4 + sj4 + dd4 + id4 + od4 + sd4) / target) * 100).round()),
              },
            ),
                 PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Dylan Hamil'),
              'JobTimeDis': PlutoCell(value: dj5),
                'DriveTimeDis': PlutoCell(value: dd5),
                'JobTimeIns': PlutoCell(value: ij5 ),
                'DriveTimeIns': PlutoCell(value: id5),
                'JobTimeOth': PlutoCell(value: oj5),
                'DriveTimeOth': PlutoCell(value: od5),
                'JobTimeSer': PlutoCell(value: sj5),
                'DriveTimeSer': PlutoCell(value: sd5),
                'TotalJobTime': PlutoCell(value: dj5 + ij5 + oj5 + sj5),
                'TotalDriveTime': PlutoCell(value: dd5 + id5 + od5 + sd5),
                'TotalTime': PlutoCell(value: dj5 + ij5 + oj5 + sj5 + dd5 + id5 + od5 + sd5 ),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(value: (((dj5 + ij5 + oj5 + sj5 + dd5 + id5 + od5 + sd5) / target) * 100).round()),
              },
            ),
                 PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Joseph Thomson'),
                'JobTimeDis': PlutoCell(value: dj6),
                'DriveTimeDis': PlutoCell(value: dd6),
                'JobTimeIns': PlutoCell(value: ij6 ),
                'DriveTimeIns': PlutoCell(value: id6),
                'JobTimeOth': PlutoCell(value: oj6),
                'DriveTimeOth': PlutoCell(value: od6),
                'JobTimeSer': PlutoCell(value: sj6),
                'DriveTimeSer': PlutoCell(value: sd6),
                'TotalJobTime': PlutoCell(value: dj6 + ij6 + oj6 + sj6),
                'TotalDriveTime': PlutoCell(value: dd6 + id6 + od6 + sd6),
                'TotalTime': PlutoCell(value: dj6 + ij6 + oj6 + sj6 + dd6 + id6 + od6 + sd6 ),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(value: (((dj6 + ij6 + oj6 + sj6 + dd6 + id6 + od6 + sd6) / target) * 100).round()),
              },
            ),
                 PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Larry Phillips'),
               'JobTimeDis': PlutoCell(value: dj7),
                'DriveTimeDis': PlutoCell(value: dd7),
                'JobTimeIns': PlutoCell(value: ij7 ),
                'DriveTimeIns': PlutoCell(value: id7),
                'JobTimeOth': PlutoCell(value: oj7),
                'DriveTimeOth': PlutoCell(value: od7),
                'JobTimeSer': PlutoCell(value: sj7),
                'DriveTimeSer': PlutoCell(value: sd7),
                'TotalJobTime': PlutoCell(value: dj7 + ij7 + oj7 + sj7),
                'TotalDriveTime': PlutoCell(value: dd7 + id7 + od7 + sd7),
                'TotalTime': PlutoCell(value: dj7 + ij7 + oj7 + sj7 + dd7 + id7 + od7 + sd7 ),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(value: (((dj7 + ij7 + oj7 + sj7 + dd7 + id7 + od7 + sd7) / target) * 100).round()),
              },
            ),
                 PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Team 1'),
              'JobTimeDis': PlutoCell(value: dj8),
                'DriveTimeDis': PlutoCell(value: dd8),
                'JobTimeIns': PlutoCell(value: ij8 ),
                'DriveTimeIns': PlutoCell(value: id8),
                'JobTimeOth': PlutoCell(value: oj8),
                'DriveTimeOth': PlutoCell(value: od8),
                'JobTimeSer': PlutoCell(value: sj8),
                'DriveTimeSer': PlutoCell(value: sd8),
                'TotalJobTime': PlutoCell(value: dj8 + ij8 + oj8 + sj8),
                'TotalDriveTime': PlutoCell(value: dd8 + id8 + od8 + sd8),
                'TotalTime': PlutoCell(value: dj8 + ij8 + oj8 + sj8 + dd8 + id8 + od8 + sd8 ),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(value: (((dj8 + ij8 + oj8 + sj8 + dd8 + id8 + od8 + sd8) / target) * 100).round()),
              },
            ),
                 PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Team 2'),
                'JobTimeDis': PlutoCell(value: dj9),
                'DriveTimeDis': PlutoCell(value: dd9),
                'JobTimeIns': PlutoCell(value: ij9 ),
                'DriveTimeIns': PlutoCell(value: id9),
                'JobTimeOth': PlutoCell(value: oj9),
                'DriveTimeOth': PlutoCell(value: od9),
                'JobTimeSer': PlutoCell(value: sj9),
                'DriveTimeSer': PlutoCell(value: sd9),
                'TotalJobTime': PlutoCell(value: dj9 + ij9 + oj9 + sj9),
                'TotalDriveTime': PlutoCell(value: dd9 + id9 + od9 + sd9),
                'TotalTime': PlutoCell(value: dj9 + ij9 + oj9 + sj9 + dd9 + id9 + od9 + sd9 ),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(value: (((dj9 + ij9 + oj9 + sj9 + dd9 + id9 + od9 + sd9) / target) * 100).round()),
              },
            ),
                 PlutoRow(
              cells: {
                'Name': PlutoCell(value: 'Terry Isreal'),
               'JobTimeDis': PlutoCell(value: dj10),
                'DriveTimeDis': PlutoCell(value: dd10),
                'JobTimeIns': PlutoCell(value: ij10 ),
                'DriveTimeIns': PlutoCell(value: id10),
                'JobTimeOth': PlutoCell(value: oj10),
                'DriveTimeOth': PlutoCell(value: od10),
                'JobTimeSer': PlutoCell(value: sj10),
                'DriveTimeSer': PlutoCell(value: sd10),
                'TotalJobTime': PlutoCell(value: dj10 + ij10 + oj10 + sj10),
                'TotalDriveTime': PlutoCell(value: dd10 + id10 + od10 + sd10),
                'TotalTime': PlutoCell(value: dj10 + ij10 + oj10 + sj10 + dd10 + id10 + od10 + sd10 ),
                'TargetUtilization': PlutoCell(value: target),
                'Utilization': PlutoCell(value: (((dj10 + ij10 + oj10 + sj10 + dd10 + id10 + od10 + sd10) / target) * 100).round()),
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
