import 'package:flutter/material.dart';
import 'package:graficas_demo/functions/date_format.dart';
import 'package:graficas_demo/providers/pdf_provider.dart';
import 'package:graficas_demo/theme/App_theme.dart';
import 'package:pdfx/pdfx.dart';
import 'package:provider/provider.dart';

import 'widgets/firma_pdf.dart';

class PDF extends StatefulWidget {
  const PDF({Key? key}) : super(key: key);

  @override
  State<PDF> createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final PDFProvider provider = Provider.of<PDFProvider>(
        context,
        listen: false,
      );
      await provider.crearPDF();
      provider.anexo = false;
      provider.firmaAnexo = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final PDFProvider provider = Provider.of<PDFProvider>(context);
    double width = MediaQuery.of(context).size.width / 1440;
    double height = MediaQuery.of(context).size.height / 1024;
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF File'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: IconButton(
                    icon: const Icon(Icons.upload_file, color: AppTheme.primary),
                    tooltip: 'Cargar Anexo Firmado',
                    color: AppTheme.primary,
                    onPressed: () async {
                      await provider.pickProveedorDoc();
                      /* setState(() {}); */
                    },
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: IconButton(
                    icon: const Icon(Icons.history_edu, color: AppTheme.primary),
                    tooltip: 'Generar Anexo',
                    color: AppTheme.primary,
                    onPressed: () async {
                      provider.crearPDF();
                    }),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: IconButton(
                    icon: const Icon(Icons.history_edu, color: AppTheme.primary),
                    tooltip: 'Firmar Anexo',
                    color: AppTheme.primary,
                    onPressed: () async {
                      await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const FirmaPDF();
                        },
                      );
                    }),
              ),
              //Pantalla Completa
              Padding(
                padding: const EdgeInsets.all(20),
                child: IconButton(
                    icon: const Icon(Icons.fullscreen, color: AppTheme.primary),
                    tooltip: 'Pantalla Completa',
                    color: AppTheme.primary,
                    onPressed: () async {
                      await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              content: SizedBox(
                                width: width * 1000,
                                height: height * 1000,
                                child: PdfView(
                                  backgroundDecoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(21),
                                    ),
                                  ),
                                  controller: provider.pdfController!,
                                ),
                              ));
                        },
                      );
                    }),
              ),
              //Descargar Anexo
              Padding(
                padding: const EdgeInsets.all(20),
                child: IconButton(
                  icon: const Icon(Icons.file_download_outlined, color: AppTheme.primary),
                  tooltip: 'Descargar Anexo',
                  color: AppTheme.primary,
                  onPressed: () {
                    provider.descargarArchivo(provider.documento, '${dateFormat(provider.fecha)}_Anexo_.pdf');
                    provider.anexo = true;
                    setState(() {});
                  },
                ),
              ),
              //Imprimir
              Padding(
                padding: const EdgeInsets.all(20),
                child: IconButton(
                  icon: const Icon(Icons.print, color: AppTheme.primary),
                  tooltip: 'Imprimir',
                  color: AppTheme.primary,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: IconButton(
                  icon: const Icon(Icons.close, color: AppTheme.primary),
                  tooltip: 'Salir',
                  color: AppTheme.primary,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: const Color(0xff262626),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppTheme.primary,
                      width: 1.5,
                    ),
                  ),
                  child: provider.pdfController == null
                      ? const CircularProgressIndicator()
                      : PdfView(
                          pageSnapping: false,
                          scrollDirection: Axis.vertical,
                          physics: const BouncingScrollPhysics(),
                          renderer: (PdfPage page) {
                            if (page.width >= page.height) {
                              return page.render(
                                width: page.width * 7,
                                height: page.height * 4,
                                format: PdfPageImageFormat.jpeg,
                                backgroundColor: '#15FF0D',
                              );
                            } else if (page.width == page.height) {
                              return page.render(
                                width: page.width * 4,
                                height: page.height * 4,
                                format: PdfPageImageFormat.jpeg,
                                backgroundColor: '#15FF0D',
                              );
                            } else {
                              return page.render(
                                width: page.width * 4,
                                height: page.height * 7,
                                format: PdfPageImageFormat.jpeg,
                                backgroundColor: '#15FF0D',
                              );
                            }
                          },
                          controller: provider.pdfController!,
                          onDocumentLoaded: (document) {},
                          onPageChanged: (page) {},
                          onDocumentError: (error) {},
                        )),
            ),
          ),
        ],
      ),
    );
  }
}
