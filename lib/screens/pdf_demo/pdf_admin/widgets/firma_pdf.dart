// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/pdf_demo/pdf_provider.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

import '../../../../theme/app_theme.dart';

class FirmaPDF extends StatefulWidget {
  const FirmaPDF({
    super.key,
  });
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Tooltip(
              message: 'Confirmar Firma',
              child: IconButton(
                iconSize: 30,
                onPressed: () async {
                  if (provider.signaturecontroller.isNotEmpty) {
                    await provider.exportSignature();
                    await provider.crearPDF();
                  } else {
                    provider.signaturecontroller.clear();
                    provider.firmaAnexo = false;
                    await provider.crearPDF();
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
                  iconSize: 30,
                  onPressed: () {
                    provider.signaturecontroller.clear();
                    provider.firmaAnexo = false;
                  },
                  icon: const Icon(
                    Icons.clear,
                    color: Colors.red,
                  )),
            )
          ],
        ),
        provider.pdfController == null
            ? const CircularProgressIndicator()
            : Signature(
                controller: provider.signaturecontroller,
                backgroundColor: AppTheme.primaryBackground,
                width: width * 410,
                height: height * 100,
              ),
      ],
    );
  }
}
