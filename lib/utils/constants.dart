import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../theme/app_theme.dart';

PlutoGridScrollbarConfig plutoGridScrollbarConfig(BuildContext context) {
  return const PlutoGridScrollbarConfig(
    isAlwaysShown: true,
    scrollbarThickness: 5,
    hoverWidth: 20,
    scrollBarColor: AppTheme.primary,
  );
}

double rowHeight = 60;

PlutoGridStyleConfig plutoGridStyleConfig(BuildContext context) {
  return PlutoGridStyleConfig(
    //columnContextIcon: Icons.more_horiz,
    rowHeight: rowHeight,
    iconColor: AppTheme.primary,
    checkedColor: const Color(0xFFC7D8ED),
    /////////////////////////////////////
    cellTextStyle: AppTheme.contenidoTablas,
    columnTextStyle: AppTheme.contenidoTablas,
    /////////////////////////////////////
    rowColor: AppTheme.primaryBackground,
    enableRowColorAnimation: true,
    /////////////////////////////////////
    gridBackgroundColor: Colors.transparent,
    menuBackgroundColor: AppTheme.primaryBackground,
    activatedColor: AppTheme.primaryBackground,
    /////////////////////////////////////
    enableCellBorderVertical: false,
    borderColor: AppTheme.primaryBackground,
    gridBorderColor: AppTheme.primary,
    gridBorderRadius: BorderRadius.circular(15),
    gridPopupBorderRadius: BorderRadius.circular(15),
  );
}
