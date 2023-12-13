import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/pdf_list_provider.dart';
import 'package:graficas_demo/public/colors.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/card.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/custom_text_field.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/custom_text_icon_button.dart';
import 'package:graficas_demo/screens/pdf_list/widgets/pdf_popup.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:graficas_demo/utils/constants.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:provider/provider.dart';

class PDFList extends StatefulWidget {
  const PDFList({Key? key}) : super(key: key);

  @override
  State<PDFList> createState() => _PDFState();
}

class _PDFState extends State<PDFList> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final PDFListProvider provider = Provider.of<PDFListProvider>(
        context,
        listen: false,
      );
      await provider.clearAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    final PDFListProvider provider = Provider.of<PDFListProvider>(context);
    double width = MediaQuery.of(context).size.width / 1440;
    double height = MediaQuery.of(context).size.height / 1024;
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDFList File'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: CustomCard(
          width: width * 1400,
          title: 'Document List',
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTextIconButton(
                      isLoading: false,
                      icon: const Icon(Icons.filter_alt_outlined, color: AppTheme.primaryBackground),
                      text: 'Filter',
                      onTap: () => provider.stateManager!.setShowColumnFilter(!provider.stateManager!.showColumnFilter),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CustomTextIconButton(
                        isLoading: false,
                        icon: const Icon(Icons.view_column_outlined, color: AppTheme.primaryBackground),
                        text: 'Set Columns',
                        onTap: () => provider.stateManager!.showSetColumnsPopup(context),
                      ),
                    ),
                    CustomTextField(
                      width: 500,
                      enabled: true,
                      controller: provider.searchController,
                      icon: Icons.search,
                      label: 'Search',
                      keyboardType: TextInputType.text,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: CustomTextIconButton(
                        width: width * 150,
                        isLoading: false,
                        icon: const Icon(Icons.add, color: AppTheme.primaryBackground),
                        text: 'Create Document',
                        color: AppTheme.primary,
                        onTap: () async {
                          Navigator.pushNamed(context, 'pdf');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              provider.rows.isEmpty
                  ? const CircularProgressIndicator()
                  : SizedBox(
                      height: height * 762,
                      child: PlutoGrid(
                        key: UniqueKey(),
                        configuration: PlutoGridConfiguration(
                          scrollbar: plutoGridScrollbarConfig(context),
                          style: plutoGridStyleConfig(context),
                          columnFilter: PlutoGridColumnFilterConfig(
                            filters: const [
                              ...FilterHelper.defaultFilters,
                            ],
                            resolveDefaultColumnFilter: (column, resolver) {
                              if (column.field == 'ID_Column') {
                                return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
                              } else if (column.field == 'Name_Column') {
                                return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
                              } else if (column.field == 'Creation_Date_Column') {
                                return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
                              } else if (column.field == 'Due_Date_Column') {
                                return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
                              } else if (column.field == 'Status_Column') {
                                return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
                              } else if (column.field == 'Document_Column') {
                                return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
                              } else if (column.field == 'Actions_Column') {
                                return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
                              }
                              return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
                            },
                          ),
                        ),
                        columns: [
                          //ID
                          PlutoColumn(
                            titleSpan: const TextSpan(children: [
                              WidgetSpan(child: Icon(Icons.vpn_key_outlined, color: AppTheme.primaryBackground)),
                              WidgetSpan(child: SizedBox(width: 10)),
                              TextSpan(text: 'ID', style: AppTheme.encabezadoTablas)
                            ]),
                            backgroundColor: const Color(0XFF6491F7),
                            title: 'ID',
                            field: 'ID_Column',
                            titleTextAlign: PlutoColumnTextAlign.start,
                            textAlign: PlutoColumnTextAlign.center,
                            type: PlutoColumnType.text(),
                            enableRowDrag: false,
                            enableDropToResize: false,
                            enableEditingMode: false,
                            width: width * 100,
                            cellPadding: EdgeInsets.zero,
                            renderer: (rendererContext) {
                              return Container(
                                height: rowHeight,
                                // width: rendererContext.cell.column.width,
                                decoration: BoxDecoration(gradient: whiteGradient),
                                child: Center(
                                  child: Text(
                                    rendererContext.cell.value.toString(),
                                    style: AppTheme.contenidoTablas,
                                  ),
                                ),
                              );
                            },
                          ),
                          //name
                          PlutoColumn(
                            titleSpan: const TextSpan(children: [
                              WidgetSpan(child: Icon(Icons.person, color: AppTheme.primaryBackground)),
                              WidgetSpan(child: SizedBox(width: 10)),
                              TextSpan(text: 'Name', style: AppTheme.encabezadoTablas)
                            ]),
                            backgroundColor: const Color(0XFF6491F7),
                            title: 'Name',
                            field: 'Name_Column',
                            titleTextAlign: PlutoColumnTextAlign.start,
                            textAlign: PlutoColumnTextAlign.center,
                            type: PlutoColumnType.text(),
                            enableRowDrag: false,
                            enableDropToResize: false,
                            enableEditingMode: false,
                            width: width * 250,
                            cellPadding: EdgeInsets.zero,
                            renderer: (rendererContext) {
                              return Container(
                                height: rowHeight,
                                // width: rendererContext.cell.column.width,
                                decoration: BoxDecoration(gradient: whiteGradient),
                                child: Center(
                                  child: Text(
                                    rendererContext.cell.value.toString(),
                                    style: AppTheme.contenidoTablas,
                                  ),
                                ),
                              );
                            },
                          ),
                          //Creation Name
                          PlutoColumn(
                            titleSpan: const TextSpan(children: [
                              WidgetSpan(child: Icon(Icons.calendar_month, color: AppTheme.primaryBackground)),
                              WidgetSpan(child: SizedBox(width: 10)),
                              TextSpan(text: 'Creation Date', style: AppTheme.encabezadoTablas)
                            ]),
                            backgroundColor: const Color(0XFF6491F7),
                            title: 'Creation Date',
                            field: 'Creation_Date_Column',
                            titleTextAlign: PlutoColumnTextAlign.start,
                            textAlign: PlutoColumnTextAlign.center,
                            type: PlutoColumnType.text(),
                            enableRowDrag: false,
                            enableDropToResize: false,
                            enableEditingMode: false,
                            width: width * 200,
                            cellPadding: EdgeInsets.zero,
                            renderer: (rendererContext) {
                              return Container(
                                height: rowHeight,
                                // width: rendererContext.cell.column.width,
                                decoration: BoxDecoration(gradient: whiteGradient),
                                child: Center(
                                  child: Text(
                                    rendererContext.cell.value.toString(),
                                    style: AppTheme.contenidoTablas,
                                  ),
                                ),
                              );
                            },
                          ),
                          //Due Date
                          PlutoColumn(
                            titleSpan: const TextSpan(children: [
                              WidgetSpan(child: Icon(Icons.calendar_month, color: AppTheme.primaryBackground)),
                              WidgetSpan(child: SizedBox(width: 10)),
                              TextSpan(text: 'Due Date', style: AppTheme.encabezadoTablas)
                            ]),
                            backgroundColor: const Color(0XFF6491F7),
                            title: 'Due Date',
                            field: 'Due_Date_Column',
                            titleTextAlign: PlutoColumnTextAlign.start,
                            textAlign: PlutoColumnTextAlign.center,
                            type: PlutoColumnType.text(),
                            enableRowDrag: false,
                            enableDropToResize: false,
                            enableEditingMode: false,
                            width: width * 200,
                            cellPadding: EdgeInsets.zero,
                            renderer: (rendererContext) {
                              return Container(
                                height: rowHeight,
                                // width: rendererContext.cell.column.width,
                                decoration: BoxDecoration(gradient: whiteGradient),
                                child: Center(
                                  child: Text(
                                    rendererContext.cell.value.toString(),
                                    style: AppTheme.contenidoTablas,
                                  ),
                                ),
                              );
                            },
                          ),
                          //Status
                          PlutoColumn(
                            titleSpan: const TextSpan(children: [
                              WidgetSpan(child: Icon(Icons.calendar_month, color: AppTheme.primaryBackground)),
                              WidgetSpan(child: SizedBox(width: 10)),
                              TextSpan(text: 'Status', style: AppTheme.encabezadoTablas)
                            ]),
                            backgroundColor: const Color(0XFF6491F7),
                            title: 'Status',
                            field: 'Status_Column',
                            titleTextAlign: PlutoColumnTextAlign.start,
                            textAlign: PlutoColumnTextAlign.center,
                            type: PlutoColumnType.text(),
                            enableRowDrag: false,
                            enableDropToResize: false,
                            enableEditingMode: false,
                            width: width * 150,
                            cellPadding: EdgeInsets.zero,
                            renderer: (rendererContext) {
                              return Container(
                                height: rowHeight,
                                width: rendererContext.cell.column.width,
                                decoration: BoxDecoration(gradient: whiteGradient),
                                child: Center(
                                  child: Container(
                                    width: width * 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: rendererContext.cell.value.toString() == 'Signed'
                                          ? Colors.green
                                          : rendererContext.cell.value.toString() == 'Waiting'
                                              ? Colors.amber
                                              : Colors.red,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        rendererContext.cell.value.toString(),
                                        style: AppTheme.contenidoTablas,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          //Document
                          PlutoColumn(
                            titleSpan: const TextSpan(children: [
                              WidgetSpan(child: Icon(Icons.calendar_month, color: AppTheme.primaryBackground)),
                              WidgetSpan(child: SizedBox(width: 10)),
                              TextSpan(text: 'Document', style: AppTheme.encabezadoTablas)
                            ]),
                            backgroundColor: const Color(0XFF6491F7),
                            title: 'Document',
                            field: 'Document_Column',
                            titleTextAlign: PlutoColumnTextAlign.start,
                            textAlign: PlutoColumnTextAlign.center,
                            type: PlutoColumnType.text(),
                            enableRowDrag: false,
                            enableDropToResize: false,
                            enableEditingMode: false,
                            width: width * 200,
                            cellPadding: EdgeInsets.zero,
                            renderer: (rendererContext) {
                              return Container(
                                height: rowHeight,
                                // width: rendererContext.cell.column.width,
                                decoration: BoxDecoration(gradient: whiteGradient),
                                child: Center(
                                  child: IconButton(
                                    onPressed: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return const PdfPopup();
                                        },
                                      );
                                    },
                                    tooltip: 'See File',
                                    icon: const Icon(Icons.picture_as_pdf),
                                    color: AppTheme.primary,
                                  ),
                                ),
                              );
                            },
                          ),
                          //Actions
                          PlutoColumn(
                            titleSpan: const TextSpan(children: [
                              WidgetSpan(child: Icon(Icons.calendar_month, color: AppTheme.primaryBackground)),
                              WidgetSpan(child: SizedBox(width: 10)),
                              TextSpan(text: 'Actions', style: AppTheme.encabezadoTablas)
                            ]),
                            backgroundColor: const Color(0XFF6491F7),
                            title: 'Actions',
                            field: 'Actions_Column',
                            titleTextAlign: PlutoColumnTextAlign.start,
                            textAlign: PlutoColumnTextAlign.center,
                            type: PlutoColumnType.text(),
                            enableRowDrag: false,
                            enableDropToResize: false,
                            enableEditingMode: false,
                            width: width * 273,
                            cellPadding: EdgeInsets.zero,
                            renderer: (rendererContext) {
                              return Container(
                                  height: rowHeight,
                                  // width: rendererContext.cell.column.width,
                                  decoration: BoxDecoration(gradient: whiteGradient),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () async {
                                          await showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return const PdfPopup();
                                            },
                                          );
                                        },
                                        tooltip: 'Send Reminder',
                                        icon: const Icon(Icons.email),
                                        color: AppTheme.primary,
                                      ),
                                      Center(
                                        child: IconButton(
                                          onPressed: () async {
                                            await showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return const PdfPopup();
                                              },
                                            );
                                          },
                                          tooltip: 'Cancel',
                                          icon: const Icon(Icons.cancel),
                                          color: AppTheme.primary,
                                        ),
                                      ),
                                    ],
                                  ));
                            },
                          ),
                        ],
                        rows: provider.rows,
                        onLoaded: (event) async {
                          event.stateManager.setShowLoading(provider.loadingGrid);
                          provider.stateManager = event.stateManager;
                        },
                        createFooter: (stateManager) {
                          stateManager.setPageSize(provider.pageRowCount);
                          stateManager.setPage(provider.page);
                          return const SizedBox(height: 0, width: 0);
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
