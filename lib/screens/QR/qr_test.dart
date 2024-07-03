import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'package:mobile_scanner/mobile_scanner.dart' as movile;
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';

class QRTest extends StatefulWidget {
  const QRTest({super.key});

  @override
  State<QRTest> createState() => _QRTestState();
}

class _QRTestState extends State<QRTest> {
  final movile.MobileScannerController cameraController = movile.MobileScannerController(
      autoStart: true, // Asegúrate de que esto está en true
      torchEnabled: true,
      facing: movile.CameraFacing.back);
  final GlobalKey qrkey = GlobalKey(debugLabel: "QR");
  QRViewController? controller;
  String result = '';

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void onQRCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData.code!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Test'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Stack(
                    children: [
                      QRView(
                        key: qrkey,
                        onQRViewCreated: onQRCreated,
                      ),
                      QRScannerOverlay(),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Text(
                  'Scan Result: $result',
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
