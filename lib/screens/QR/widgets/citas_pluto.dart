// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:graficas_demo/functions/sizes.dart';
import 'package:graficas_demo/providers/QR/qr_provider.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/custom_text_icon_button.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:graficas_demo/utils/constants.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:provider/provider.dart';

class CitasPluto extends StatefulWidget {
  const CitasPluto({required this.iDJSA, super.key});
  final int iDJSA;
  @override
  State<CitasPluto> createState() => _CitasPlutoState();
}

class _CitasPlutoState extends State<CitasPluto> {
  @override
  Widget build(BuildContext context) {
    QRProvider provider = Provider.of<QRProvider>(context);
    //double rowHeight = 60;
    //double rowHeightJSA = 45;

    return Container(
      height: getHeight(10, context),
      margin: const EdgeInsets.symmetric(horizontal: 20),
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
              } else if (column.field == 'NAME_Column') {
                return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
              } else if (column.field == 'STATUS_Column') {
                return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
              } 
              return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
            },
          ),
        ),
        columns: [
          PlutoColumn(
            titleSpan: const TextSpan(children: [TextSpan(text: 'ID Employee', style: TextStyle(fontFamily: 'Inter', color: Colors.grey, fontSize: 14))]),
            title: 'ID',
            field: 'ID_Column',
            titleTextAlign: PlutoColumnTextAlign.center,
            textAlign: PlutoColumnTextAlign.center,
            type: PlutoColumnType.text(),
            enableRowChecked: true,
            enableRowDrag: false,
            enableDropToResize: false,
            enableEditingMode: false,
            enableContextMenu: false,
            width: 600,
            cellPadding: EdgeInsets.zero,
            renderer: (rendererContext) {
              return Center(
                child: Text(rendererContext.cell.value.toString(), style: AppTheme.contenidoTablas),
              );
            },
          ),
          PlutoColumn(
            titleSpan: const TextSpan(children: [TextSpan(text: 'Name', style: TextStyle(fontFamily: 'Inter', color: Colors.grey, fontSize: 14))]),
            title: 'NAME',
            field: 'NAME_Column',
            titleTextAlign: PlutoColumnTextAlign.center,
            textAlign: PlutoColumnTextAlign.center,
            type: PlutoColumnType.text(),
            enableRowDrag: false,
            enableDropToResize: false,
            enableEditingMode: false,
            enableContextMenu: false,
            width: 300,
            cellPadding: EdgeInsets.zero,
            renderer: (rendererContext) {
              return Center(
                child: Text(rendererContext.cell.value ?? "-", style: AppTheme.contenidoTablas),
              );
            },
          ),
          PlutoColumn(
            titleSpan: const TextSpan(children: [TextSpan(text: 'Role', style: TextStyle(fontFamily: 'Inter', color: Colors.grey, fontSize: 14))]),
            title: 'INE',
            field: 'INE_Column',
            titleTextAlign: PlutoColumnTextAlign.center,
            textAlign: PlutoColumnTextAlign.center,
            type: PlutoColumnType.text(),
            enableRowDrag: false,
            enableDropToResize: false,
            enableEditingMode: false,
            enableContextMenu: false,
            width: 300,
            cellPadding: EdgeInsets.zero,
            renderer: (rendererContext) {
              return Center(
                child: Text(rendererContext.cell.value ?? "-", style: AppTheme.contenidoTablas),
              );
            },
          ),
          PlutoColumn(
            titleSpan: const TextSpan(children: [TextSpan(text: 'Status', style: TextStyle(fontFamily: 'Inter', color: Colors.grey, fontSize: 14))]),
            title: 'IMMS',
            field: 'IMMS_Column',
            titleTextAlign: PlutoColumnTextAlign.center,
            textAlign: PlutoColumnTextAlign.center,
            type: PlutoColumnType.text(),
            enableRowDrag: false,
            enableDropToResize: false,
            enableEditingMode: false,
            enableContextMenu: false,
            width: 300,
            cellPadding: EdgeInsets.zero,
          ),
          PlutoColumn(
            titleSpan: const TextSpan(children: [TextSpan(text: 'Document', style: TextStyle(fontFamily: 'Inter', color: Colors.grey, fontSize: 14))]),
            title: 'SAT',
            field: 'SAT_Column',
            titleTextAlign: PlutoColumnTextAlign.center,
            textAlign: PlutoColumnTextAlign.center,
            type: PlutoColumnType.text(),
            enableRowDrag: false,
            enableDropToResize: false,
            enableEditingMode: false,
            enableContextMenu: false,
            width: 150,
            cellPadding: EdgeInsets.zero,
          ),
          PlutoColumn(
            titleSpan: const TextSpan(children: [TextSpan(text: 'Document', style: TextStyle(fontFamily: 'Inter', color: Colors.grey, fontSize: 14))]),
            title: 'Actions',
            field: 'Actions',
            titleTextAlign: PlutoColumnTextAlign.center,
            textAlign: PlutoColumnTextAlign.center,
            type: PlutoColumnType.text(),
            enableRowDrag: false,
            enableDropToResize: false,
            enableEditingMode: false,
            enableContextMenu: false,
            width: 150,
            cellPadding: EdgeInsets.zero,
            renderer: (rendererContext) {
              return Row(
                children: [
                  CustomTextIconButton(
                    isLoading: false,
                    icon: const Icon(Icons.abc),
                    text: 'Confirm',
                    onTap: () {},
                  ),
                  CustomTextIconButton(
                    isLoading: false,
                    icon: const Icon(Icons.abc),
                    text: 'Denegate',
                    onTap: () {},
                  )
                ],
              );
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
    );
  }
}
