import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/functions/date_format.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:pdfx/pdfx.dart';

class PDFListProvider extends ChangeNotifier {
  final controllerBusqueda = TextEditingController();

  PlutoGridStateManager? stateManager;
  List<PlutoRow> rows = [];
  int pageRowCount = 10;
  int page = 1;
  bool loadingGrid = false;
  DateTime fecha = DateTime.now();
  DateTime create = DateTime.now();
  final searchController = TextEditingController();
  bool listOpenned = true;
  bool firmaAnexo = false;
  bool ejecBloq=false;

  Future<void> clearAll() async {
    listOpenned = true;
    rows = [
      PlutoRow(
        cells: {
          'ID_Column': PlutoCell(value: '1'),
          'Name_Column': PlutoCell(value: 'File_Example_1.pdf'),
          'Creation_Date_Column': PlutoCell(value: dateFormat(fecha)),
          'Due_Date_Column': PlutoCell(value: dateFormat(fecha)),
          'Status_Column': PlutoCell(value: 'Signed'),
          'Document_Column': PlutoCell(value: ''),
          'Actions_Column': PlutoCell(value: ''),
        },
      ),
      PlutoRow(
        cells: {
          'ID_Column': PlutoCell(value: '2'),
          'Name_Column': PlutoCell(value: 'File_Example_2.pdf'),
          'Creation_Date_Column': PlutoCell(value: dateFormat(fecha)),
          'Due_Date_Column': PlutoCell(value: dateFormat(fecha)),
          'Status_Column': PlutoCell(value: 'Waiting'),
          'Document_Column': PlutoCell(value: ''),
          'Actions_Column': PlutoCell(value: ''),
        },
      ),
      PlutoRow(
        cells: {
          'ID_Column': PlutoCell(value: '3'),
          'Name_Column': PlutoCell(value: 'File_Example_3.pdf'),
          'Creation_Date_Column': PlutoCell(value: dateFormat(fecha)),
          'Due_Date_Column': PlutoCell(value: dateFormat(fecha)),
          'Status_Column': PlutoCell(value: 'Expired'),
          'Document_Column': PlutoCell(value: ''),
          'Actions_Column': PlutoCell(value: ''),
        },
      ),
      
    ];
    return notifyListeners();
  }

  ////////////////////////////////////////////////////////
  ///////////////////////////PDF//////////////////////////
  ////////////////////////////////////////////////////////

  FilePickerResult? docProveedor;
  PdfController? pdfController; //= PdfController(document: PdfDocument.openAsset('assets/docs/Anexo .pdf'));

  Future<void> pickProveedorDoc() async {
    FilePickerResult? picker = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['pdf', 'xml']);

    //get and load pdf
    if (picker != null) {
      docProveedor = picker;
      pdfController = PdfController(
        document: PdfDocument.openData(picker.files.single.bytes!),
      );
    } else {
      pdfController = PdfController(document: PdfDocument.openAsset('assets/docs/Anexo .pdf'));
    }
    firmaAnexo = true;
    return notifyListeners();
  }

  Future<void> selectdate(
    BuildContext context,
  ) async {
    DateTime? newDate = await showDatePicker(
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: AppTheme.primary, // color Appbar
                onPrimary: AppTheme.primaryBackground, // Color letras
                onSurface: AppTheme.primary, // Color Meses
              ),
              dialogBackgroundColor: AppTheme.primaryBackground,
            ),
            child: child!,
          );
        },
        context: context,
        initialDate: create,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (newDate == null) return;
    create = newDate;
    notifyListeners();
  }
}
