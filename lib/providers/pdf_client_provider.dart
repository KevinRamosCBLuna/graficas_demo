import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graficas_demo/functions/date_format.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:pdf/pdf.dart' as pdfcolor;
import 'package:pluto_grid/pluto_grid.dart';
import 'package:pdfx/pdfx.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:pdf/widgets.dart' as pw;
import 'package:signature/signature.dart';

class PDFClientProvider extends ChangeNotifier {
  PlutoGridStateManager? stateManager;
  final controllerBusqueda = TextEditingController();
  late List<PlutoGridStateManager> listStateManager;
  List<Registro> registros = [];
  List<List<String>> data = [];
  DateTime fecha = DateTime.now();
  DateTime create = DateTime.now();
  final acountController = TextEditingController();
  final emailController = TextEditingController();
  final representativeNameController = TextEditingController();
  final addressController = TextEditingController();
  final dateController = TextEditingController();
  final acountNameController = TextEditingController();
  final phoneController = TextEditingController();

  bool ejecBloq = false;
  bool listOpenned = true;
  bool anexo = false;
  bool firmaAnexo = false;

  Future<void> clearAll() async {
    listStateManager;
    listOpenned = true;
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

  //Descargar PDF
  String pdfUrl = '';
  void descargarArchivo(Uint8List datos, String nombreArchivo) {
    // Crear un Blob con los datos
    final blob = html.Blob([datos]);

    // Crear una URL para el Blob
    final url = html.Url.createObjectUrlFromBlob(blob);

    // Crear un enlace HTML para la descarga
    final anchor = html.AnchorElement(href: url)
      ..target = 'web'
      ..download = nombreArchivo;

    // Hacer clic en el enlace para iniciar la descarga
    html.document.body?.children.add(anchor);
    anchor.click();

    // Limpiar después de la descarga
    html.document.body?.children.remove(anchor);
    html.Url.revokeObjectUrl(url);
  }

  final SignatureController signaturecontroller = SignatureController(penColor: Colors.black, penStrokeWidth: 5);
  final SignatureController clientSignatureController = SignatureController(penColor: Colors.black, penStrokeWidth: 5);
  Uint8List? signature;
  Uint8List? signatureClient;
  Future<Uint8List> exportSignature() async {
    pdfController = null;
    notifyListeners();
    final exportController = SignatureController(penStrokeWidth: 2, penColor: Colors.black, exportBackgroundColor: Colors.white, points: signaturecontroller.points);
    signature = await exportController.toPngBytes();
    exportController.dispose();
    firmaAnexo = true;
    return signature!;
  }

  Future<Uint8List> clientExportSignature() async {
    pdfController = null;
    notifyListeners();
    final exportController = SignatureController(penStrokeWidth: 2, penColor: Colors.black, exportBackgroundColor: Colors.white, points: clientSignatureController.points);
    signatureClient = await exportController.toPngBytes();
    exportController.dispose();
    firmaAnexo = true;
    return signatureClient!;
  }

  Future<PdfController?> crearPDF() async {
    acountController.text = '2157412';
    emailController.text = 'lhernandez@gmail.com';
    addressController.text = 'San Luis 128452, California Av';
    acountNameController.text = 'Luis Hernandez';
    phoneController.text = '58715491';
    dateController.text = dateFormat(fecha);
    final logo = (await rootBundle.load('assets/images/2.png')).buffer.asUint8List();
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Column(
          children: [
            pw.Row(children: [
              pw.Container(
                alignment: pw.Alignment.center,
                width: 250,
                height: 80,
                child: pw.Image(pw.MemoryImage(logo), fit: pw.BoxFit.fill),
              ),
              //Titulo
              pw.Column(children: [
                pw.Text(
                  textAlign: pw.TextAlign.center,
                  'Fiber Optic Access Agreement',
                  style: const pw.TextStyle(fontSize: 20, color: pdfcolor.PdfColor.fromInt(0XFF0A0859), decoration: pw.TextDecoration.underline),
                ),
                pw.Text(
                  'Address: ${addressController.text}',
                  style: const pw.TextStyle(
                    fontSize: 13,
                    color: pdfcolor.PdfColor.fromInt(0xFF060606),
                  ),
                ),
                pw.Text(
                  'Date: ${dateFormat(fecha)}',
                  style: const pw.TextStyle(
                    fontSize: 13,
                    color: pdfcolor.PdfColor.fromInt(0xFF060606),
                  ),
                ),
              ]),
            ]),

            pw.SizedBox(height: 10),
            pw.Row(children: [
              pw.Text('To Whom It May Concern:', textAlign: pw.TextAlign.start),
            ]),
            //Contenido
            pw.Text(
              'I,${acountNameController.text}, confirm that I am the owner of the property described above (the "Property"), and consent to the installation, operation, and maintenance by Rural Telecommunications of America, Inc. its affiliates, lessees, successors, and assigns (together "RTA") of RTA\'s fiber-based facilities ("Facilities") at the Property. The Facilities includes fiber optic cable, conduit, ducts, subpanels, equipment huts, and other equipment ("Facilities") to be placed within the Property and along the Property line. The Facilities will be used by RTA to provide broadband and communications services ("Service") to tenants and other occupants of the Property.',
              style: const pw.TextStyle(
                fontSize: 13,
                color: pdfcolor.PdfColor.fromInt(0xFF060606),
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Text(
              'RTA may enter the Property to areas containing the Facilities ("the Drop") to construct, repair and maintain the Drop. RTA shall design and configure the Facilities in the manner most expedient for the provision of the Service to the Property\'s tenants. RTA may disturb the ground in the Drop to the extent reasonably necessary to construct, repair, and maintain the Drop. RTA shall repair any damage to the Property caused by the installation, operation, or maintenance of RTA\'s equipment on the Property. RTA shall have no other obligation, however, to return the surface of the Drop to its original condition. RTA will terminate the Drop in the telecommunications room or other such location inside the Property.',
              style: const pw.TextStyle(
                fontSize: 13,
                color: pdfcolor.PdfColor.fromInt(0xFF060606),
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Text(
              'Owner is responsible for maintenance of the surface of the Drop, including but not limited to mowing, cleaning and removing sediment, trees, shrubs and debris so that access by RTA for construction, maintenance and repair is preserved. RTA\'s obligations to install, repair or maintain the Facilities shall end if Owner impairs RTA\'s access to the Drop. At its option, RTA may remove or abandon the Facilities in place via written notice by RTA of its intent to abandon',
              style: const pw.TextStyle(
                fontSize: 13,
                color: pdfcolor.PdfColor.fromInt(0xFF060606),
              ),
            ),
            pw.SizedBox(height: 10),
            representativeNameController.text.isEmpty
                ? pw.Text(
                    'RTA will contact Owner, or Owner\'s designated representative, before work begins. Owner\'s designated representative is ${acountNameController.text}, the contact phone number is ${phoneController.text} and email address is ${emailController.text}. Owner\'s consent to this agreement shall continue for so long as RTA provides services to tenants or other occupants of the Property.',
                    style: const pw.TextStyle(
                      fontSize: 13,
                      color: pdfcolor.PdfColor.fromInt(0xFF060606),
                    ),
                  )
                : pw.Text(
                    'RTA will contact Owner, or Owner\'s designated representative, before work begins. Owner\'s designated representative is ${representativeNameController.text}, the contact phone number is ${phoneController.text} and email address is ${emailController.text}. Owner\'s consent to this agreement shall continue for so long as RTA provides services to tenants or other occupants of the Property.',
                    style: const pw.TextStyle(
                      fontSize: 13,
                      color: pdfcolor.PdfColor.fromInt(0xFF060606),
                    ),
                  ),
            pw.SizedBox(height: 20),
            pw.Expanded(
              child: pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly, children: [
                pw.Column(children: [
                  pw.Text(
                    'Owner, Title',
                    style: const pw.TextStyle(
                      fontSize: 13,
                      color: pdfcolor.PdfColor.fromInt(0xFF060606),
                    ),
                  ),
                  clientSignatureController.isNotEmpty
                      ? pw.Image(
                          pw.MemoryImage(signatureClient!),
                          height: 58,
                          width: 200,
                          fit: pw.BoxFit.fill,
                          alignment: pw.Alignment.center,
                        )
                      : pw.SizedBox(
                          height: 58,
                          width: 200,
                          child: pw.Center(
                            child: pw.Text(
                              'F. _______________________.',
                              style: const pw.TextStyle(
                                fontSize: 13,
                                color: pdfcolor.PdfColor.fromInt(0xFF060606),
                              ),
                            ),
                          ),
                        ),
                  pw.Text(
                    acountNameController.text,
                    style: pw.TextStyle(
                      fontStyle: pw.FontStyle.italic,
                      fontSize: 13,
                      color: const pdfcolor.PdfColor.fromInt(0xFF060606),
                    ),
                  ),
                ]),
                pw.Column(children: [
                  pw.Text(
                    'Accepted and Agreed to by RTA:',
                    style: const pw.TextStyle(
                      fontSize: 13,
                      color: pdfcolor.PdfColor.fromInt(0xFF060606),
                    ),
                  ),
                  signaturecontroller.isNotEmpty
                      ? pw.Image(
                          pw.MemoryImage(signatureClient!),
                          height: 58,
                          width: 200,
                          fit: pw.BoxFit.fill,
                          alignment: pw.Alignment.center,
                        )
                      : pw.SizedBox(
                          height: 58,
                          width: 200,
                          child: pw.Center(
                            child: pw.Text(
                              'F. _______________________.',
                              style: const pw.TextStyle(
                                fontSize: 13,
                                color: pdfcolor.PdfColor.fromInt(0xFF060606),
                              ),
                            ),
                          ),
                        ),
                  pw.Text(
                    'Brooke Johnson, Business Manager',
                    style: pw.TextStyle(
                      fontStyle: pw.FontStyle.italic,
                      fontSize: 13,
                      color: const pdfcolor.PdfColor.fromInt(0xFF060606),
                    ),
                  ),
                ]),
              ]),
            )
          ],
        ),
      ),
    );
    pdf.save();
    pdfController = PdfController(
      document: PdfDocument.openData(pdf.save()),
    );
    documento = await pdf.save();
    notifyListeners();
    return pdfController;
  }

  late Uint8List documento;

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

class Registro {
  final String cuenta;
  final String importe;
  final String comision;
  final String pagoAnticipado;
  final String diasPago;
  const Registro({required this.cuenta, required this.importe, required this.comision, required this.pagoAnticipado, required this.diasPago});
}
