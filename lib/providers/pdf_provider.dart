import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graficas_demo/functions/date_format.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart' as pdfcolor;
import 'package:pluto_grid/pluto_grid.dart';
import 'package:pdfx/pdfx.dart';
import 'dart:html' as html;
import 'package:pdf/widgets.dart' as pw;
import 'package:signature/signature.dart';

class PDFProvider extends ChangeNotifier {
  PlutoGridStateManager? stateManager;
  final controllerBusqueda = TextEditingController();
  late List<PlutoGridStateManager> listStateManager;
  List<Registro> registros = [];
  List<List<String>> data = [];
  DateTime fecha = DateTime.now();

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

  final SignatureController controller = SignatureController(penColor: Colors.black, penStrokeWidth: 5);
  Uint8List? signature;
  Future<Uint8List> exportSignature() async {
    pdfController = null;
    notifyListeners();
    final exportController = SignatureController(penStrokeWidth: 2, penColor: Colors.black, exportBackgroundColor: Colors.white, points: controller.points);
    signature = await exportController.toPngBytes();
    exportController.dispose();
    firmaAnexo = true;
    return signature!;
  }

 Future<PdfController?> crearPDF() async {
    final headers = ['Cuenta', 'Importe', 'Comisión', 'Pago Anticipado', 'Días para Pago'];
    //final data = registros.map((registro) => [registro.cuenta, registro.importe, registro.comision, registro.pagoAnticipado, registro.diasPago]).toList();
    final logo = (await rootBundle.load('assets/images/logo_rta.png')).buffer.asUint8List();
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Column(
          children: [
            //Titulo
            pw.Row(
              children: [
                pw.Expanded(
                  child: pw.Container(
                    alignment: pw.Alignment.topLeft,
                    height: 80,
                    child: pw.Image(pw.MemoryImage(logo), fit: pw.BoxFit.cover),
                  ),
                ),
                pw.Expanded(
                  child: pw.Column(
                    children: [
                      pw.Text(
                        'Anexo',
                        style: const pw.TextStyle(
                          fontSize: 30,
                          color: pdfcolor.PdfColor.fromInt(0XFF0A0859),
                        ),
                      ),
                      pw.Container(
                        decoration: const pw.BoxDecoration(
                          borderRadius: pw.BorderRadius.all(pw.Radius.circular(2)),
                          color: pdfcolor.PdfColor.fromInt(0XFF0A0859),
                        ),
                        padding: const pw.EdgeInsets.only(left: 40, top: 10, bottom: 10, right: 20),
                        alignment: pw.Alignment.centerLeft,
                        height: 50,
                        child: pw.DefaultTextStyle(
                          style: const pw.TextStyle(
                            color: pdfcolor.PdfColor.fromInt(0xFFFFFFFF),
                            fontSize: 12,
                          ),
                          child: pw.GridView(
                            crossAxisCount: 2,
                            children: [
                              pw.Text('Anexo #'),
                              pw.Text('Anexo'),
                              pw.Text('Fecha Anexo:'),
                              pw.Text(DateFormat.MMMEd('es').format(fecha)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Total
            pw.Row(
              children: [
                pw.Expanded(
                  child: pw.Row(
                    children: [
                      pw.Container(
                        margin: const pw.EdgeInsets.only(left: 10, right: 10),
                        height: 70,
                        child: pw.Text(
                          'Invoice to:',
                          style: const pw.TextStyle(
                            color: pdfcolor.PdfColor.fromInt(0XFF0A0859),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Container(
                          height: 70,
                          child: pw.RichText(
                              text: const pw.TextSpan(
                                  text: '',
                                  style: pw.TextStyle(
                                    color: pdfcolor.PdfColor.fromInt(0XFF0A0859),
                                    fontSize: 12,
                                  ),
                                  children: [
                                pw.TextSpan(
                                  text: '\n',
                                  style: pw.TextStyle(
                                    fontSize: 5,
                                  ),
                                ),
                                pw.TextSpan(
                                  text: '',
                                  style: pw.TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ])),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //Contenido
            pw.Text(
              'Que con fecha, el ${dateFormat(fecha)} se formalizó Contrato de Factoraje con anticipo de contraseñas celebrado entre Cliente con NIT  y código de cliente No. .',
              style: const pw.TextStyle(
                fontSize: 20,
                color: pdfcolor.PdfColor.fromInt(0xFF060606),
              ),
            ),
            pw.Text(
              'Por lo tanto solicita a la entidad , se me efectúe el pago anticipado de las siguiente facturas:',
              style: const pw.TextStyle(
                fontSize: 20,
                color: pdfcolor.PdfColor.fromInt(0xFF060606),
              ),
            ),
            pw.Spacer(),
            pw.TableHelper.fromTextArray(headers: headers, data: data),
            pw.SizedBox(height: 20),
            pw.Row(children: [
              pw.Expanded(
                flex: 2,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'Thank you for your business',
                      style: pw.TextStyle(
                        color: const pdfcolor.PdfColor.fromInt(0xFF060606),
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Container(
                      margin: const pw.EdgeInsets.only(top: 20, bottom: 8),
                      child: pw.Text(
                        'Payment Info:',
                        style: pw.TextStyle(
                          color: const pdfcolor.PdfColor.fromInt(0xFF060606),
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ),
                    pw.Text(
                      'paymentInfo',
                      style: const pw.TextStyle(
                        fontSize: 8,
                        lineSpacing: 5,
                        color: pdfcolor.PdfColor.fromInt(0xFF060606),
                      ),
                    ),
                  ],
                ),
              ),
              pw.Expanded(
                flex: 1,
                child: pw.DefaultTextStyle(
                  style: const pw.TextStyle(
                    fontSize: 10,
                    color: pdfcolor.PdfColor.fromInt(0XFF0A0859),
                  ),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text('Comisión:'),
                          pw.Text(''),
                        ],
                      ),
                      pw.Divider(
                        color: const pdfcolor.PdfColor.fromInt(0XFF0A0859),
                      ),
                      pw.DefaultTextStyle(
                        style: pw.TextStyle(
                          color: const pdfcolor.PdfColor.fromInt(0XFF0A0859),
                          fontSize: 14,
                          fontWeight: pw.FontWeight.bold,
                        ),
                        child: pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text('Total:'),
                            pw.Text(''),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            pw.Spacer(),
            //Foother
            controller.isNotEmpty
                ? pw.Image(
                    pw.MemoryImage(signature!),
                    height: 250,
                    width: 350,
                    fit: pw.BoxFit.fill,
                    alignment: pw.Alignment.center,
                  )
                : pw.Text(
                    'F. ________________________________________ .',
                    style: const pw.TextStyle(
                      fontSize: 20,
                      color: pdfcolor.PdfColor.fromInt(0xFF060606),
                    ),
                  ),
            pw.Text(
              'AUTORIZADO POR: ',
              style: const pw.TextStyle(
                fontSize: 20,
                color: pdfcolor.PdfColor.fromInt(0xFF060606),
              ),
            ),
            pw.Text(
              'En virtud del artículo...',
              style: const pw.TextStyle(
                fontSize: 20,
                color: pdfcolor.PdfColor.fromInt(0xFF060606),
              ),
            ),
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
}

class Registro {
  final String cuenta;
  final String importe;
  final String comision;
  final String pagoAnticipado;
  final String diasPago;
  const Registro({required this.cuenta, required this.importe, required this.comision, required this.pagoAnticipado, required this.diasPago});
}
