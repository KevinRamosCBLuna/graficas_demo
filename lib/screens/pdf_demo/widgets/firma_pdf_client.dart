// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/pdf_client_provider.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

import '../../../theme/app_theme.dart';

class FirmaPDFClient extends StatefulWidget {
  const FirmaPDFClient({
    super.key,
  });
  //final Propuesta propuesta;
  @override
  State<FirmaPDFClient> createState() => FirmaPDFState();
}

class FirmaPDFState extends State<FirmaPDFClient> {
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
    final PDFClientProvider provider = Provider.of<PDFClientProvider>(context);
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
                  if (provider.clientSignatureController.isNotEmpty) {
                    await provider.clientExportSignature();
                    await provider.crearPDF();
                  } else {
                    provider.clientSignatureController.clear();
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
                    provider.clientSignatureController.clear();
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
                controller: provider.clientSignatureController,
                backgroundColor: AppTheme.primaryBackground,
                width: width * 410,
                height: height * 100,
              ),
      ],
    );
  }
}
