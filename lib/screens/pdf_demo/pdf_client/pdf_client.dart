import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/pdf_demo/pdf_client_provider.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/card.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/custom_scrollbar.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/custom_text_field.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/custom_text_icon_button.dart';
import 'package:graficas_demo/screens/pdf_demo/pdf_client/widgets/firma_pdf_client.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:pdfx/pdfx.dart';
import 'package:provider/provider.dart';

class PDFClient extends StatefulWidget {
  const PDFClient({Key? key}) : super(key: key);

  @override
  State<PDFClient> createState() => _PDFState();
}

class _PDFState extends State<PDFClient> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final PDFClientProvider provider = Provider.of<PDFClientProvider>(
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
    final PDFClientProvider provider = Provider.of<PDFClientProvider>(context);
    double width = MediaQuery.of(context).size.width / 1440;
    double height = MediaQuery.of(context).size.height / 1024;
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDFClient File'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomScrollBar(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomCard(
                      width: width * 410,
                      height: height * 580,
                      title: 'Document Info',
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: CustomTextField(
                              width: width * 380,
                              enabled: false,
                              controller: provider.acountController,
                              icon: Icons.settings,
                              label: 'Acount Number',
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: CustomTextField(
                              width: width * 380,
                              enabled: false,
                              controller: provider.emailController,
                              icon: Icons.email,
                              label: 'Email',
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: CustomTextField(
                              width: width * 380,
                              enabled: false,
                              controller: provider.representativeNameController,
                              icon: Icons.person,
                              label: 'Representative Name',
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: CustomTextField(
                              width: width * 380,
                              enabled: false,
                              controller: provider.addressController,
                              icon: Icons.location_on,
                              label: 'Address',
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: CustomTextField(
                              width: width * 380,
                              enabled: false,
                              controller: provider.dateController,
                              icon: Icons.calendar_month,
                              label: 'Creation Date',
                              keyboardType: TextInputType.datetime,
                            ),
                          ),
                          /* Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: CustomTextIconButton(
                                isLoading: false,
                                icon: const Icon(
                                  Icons.calendar_month,
                                  color: AppTheme.primary,
                                ),
                                text: 'Date: ${DateFormat('MMMM, MM-dd-yyyy').format(provider.create)}',
                                style: const TextStyle(color: AppTheme.primary),
                                onTap: () {
                                  provider.selectdate(context);
                                },
                                color: AppTheme.primaryBackground,
                              ),
                            ), */
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: CustomTextField(
                              width: width * 380,
                              enabled: false,
                              controller: provider.acountNameController,
                              icon: Icons.person_pin,
                              label: 'Acount Name',
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: CustomTextField(
                              width: width * 380,
                              enabled: false,
                              controller: provider.phoneController,
                              icon: Icons.phone,
                              label: 'Phone Number',
                              keyboardType: TextInputType.name,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomCard(
                      title: 'Signature',
                      width: width * 410,
                      height: height * 275,
                      child: const FirmaPDFClient(),
                    ),
                  ),
                  CustomTextIconButton(
                    isLoading: false,
                    icon: const Icon(Icons.email,color: AppTheme.primaryBackground),
                    text: 'Send Document',
                    onTap: () {
                      //Metodo para subir el documento creado
                      Navigator.pushNamed(context, 'pdf_list');
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomCard(
              width: width * 810,
              title: 'Document Preview',
              child: Container(
                width: width * 810,
                height: height*820,
                decoration: BoxDecoration(
                  color: Colors.transparent,
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
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
