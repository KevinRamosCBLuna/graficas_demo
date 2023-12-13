import 'package:flutter/material.dart';
import 'package:graficas_demo/public/colors.dart';
// import 'package:graficas_demo/screens/pdf_demo/widgets/custom_text_icon_button.dart';
// import 'package:graficas_demo/providers/pdf_demo/pdf_list_provider.dart';
// import 'package:provider/provider.dart';

import '../../../../theme/app_theme.dart';

class PopupFirmaCliente extends StatefulWidget {
  const PopupFirmaCliente({super.key});

  @override
  State<PopupFirmaCliente> createState() => PopupFirmaClienteState();
}

class PopupFirmaClienteState extends State<PopupFirmaCliente> {
  @override
  void initState() {
    super.initState();

    /*  WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final PDFListProvider provider = Provider.of<PDFListProvider>(
        context,
        listen: false,
      );
      //await provider.crearPDF(widget.propuesta);
      //provider.controller.clear();
    }); */
  }

  @override
  Widget build(BuildContext context) {
    //final PDFListProvider provider = Provider.of<PDFListProvider>(context);
    double width = MediaQuery.of(context).size.width / 1440;
    double height = MediaQuery.of(context).size.height / 1024;
    return AlertDialog(
      key: UniqueKey(),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      content: Container(
        width: width * 420,
        height: height * 150,
        decoration: BoxDecoration(
          border: Border.all(color: AppTheme.primary, width: 2),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          gradient: whiteGradient,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Document Submit Succesfully',
                  style: TextStyle(
                    fontSize: 33,
                    color: AppTheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 33,
                        color: AppTheme.primaryBackground,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: AppTheme.primaryBackground,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
