// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/pdf_provider.dart';
import 'package:graficas_demo/theme/App_theme.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

class FirmaPDF extends StatefulWidget {
  const FirmaPDF({super.key, });
  //final Propuesta propuesta;
  @override
  State<FirmaPDF> createState() => FirmaPDFState();
}

class FirmaPDFState extends State<FirmaPDF> {
  @override
  void initState() {
    super.initState();
    /* WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final AprobacionSeguimientoPagosProvider provider = Provider.of<AprobacionSeguimientoPagosProvider>(
        context,
        listen: false,
      );
      //await provider.crearPDF(widget.propuesta);
    }); */
  }

  @override
  Widget build(BuildContext context) {
    final PDFProvider provider = Provider.of<PDFProvider>(context);
    double width = MediaQuery.of(context).size.width / 1440;
    double height = MediaQuery.of(context).size.height / 1024;
    return AlertDialog(
      key: UniqueKey(),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      content: Container(
        width: width * 350,
        height: height * 400,
        decoration: const BoxDecoration(
          color: AppTheme.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(21),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Ingresa Firma',
                style: AppTheme.primarStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Tooltip(
                    message: 'Confirmar Firma',
                    child: IconButton(
                      iconSize: 50,
                      onPressed: () async {
                        if (provider.controller.isNotEmpty) {
                          await provider.exportSignature();
                          await provider.crearPDF();
                          Navigator.pop(context);
                        } else {
                          provider.controller.clear();
                          provider.firmaAnexo = false;
                          await provider.crearPDF();
                          Navigator.pop(context);
                        }
                      },
                      icon: const Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Tooltip(
                    message: 'Limpiar Firma',
                    child: IconButton(
                        iconSize: 50,
                        onPressed: () {
                          provider.controller.clear();
                          provider.firmaAnexo = false;
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.red,
                        )),
                  )
                ],
              ),
              /* provider.pdfController == null
                  ? const CircularProgressIndicator()
                  :  */Signature(
                      controller: provider.controller,
                      backgroundColor: AppTheme.primary,
                      height: 250,
                      width: 350,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
