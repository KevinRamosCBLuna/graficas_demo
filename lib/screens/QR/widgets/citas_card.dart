import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/QR/qr_provider.dart';
import 'package:graficas_demo/screens/QR/widgets/invitados_card.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/card.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/custom_text_field.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/custom_text_icon_button.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:provider/provider.dart';

class CitasCard extends StatefulWidget {
  const CitasCard({super.key});

  @override
  State<CitasCard> createState() => _CitasCardState();
}

class _CitasCardState extends State<CitasCard> {
  /* @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final QRProvider provider = Provider.of<QRProvider>(
        context,
        listen: false,
      );
     // await provider.updateState();
    });
  } */

  @override
  Widget build(BuildContext context) {
    QRProvider provider = Provider.of<QRProvider>(context);
    return CustomCard(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        title: "Validacion de Citas",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.15,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color(0xffB6D0FD)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(
                              width: 60,
                              child: CustomTextIconButton(
                                color: Colors.white,
                                isLoading: false,
                                icon: Icon(Icons.filter_alt_outlined, color: AppTheme.primary),
                                text: ' ',
                                // onTap: () => provider.stateManager!.setShowColumnFilter(!provider.stateManager!.showColumnFilter),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: CustomTextField(
                                height: 35,
                                width: 500,
                                enabled: true,
                                controller: provider.searchController,
                                icon: Icons.search,
                                label: 'Search',
                                keyboardType: TextInputType.text,
                                onChanged: (String query) async {
                                  // provider.filterDocuments(query);
                                  // provider.updateState();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.numbers,
                                size: 18,
                                color: AppTheme.primary,
                              ),
                              Text('ID', style: AppTheme.secundaryStyle),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                size: 18,
                                color: AppTheme.primary,
                              ),
                              Text('Anfitrion', style: AppTheme.secundaryStyle),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.business_outlined, size: 18, color: AppTheme.primary),
                              Text('Planta', style: AppTheme.secundaryStyle),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.dashboard,
                                size: 18,
                                color: AppTheme.primary,
                              ),
                              Text(
                                'Area',
                                style: AppTheme.secundaryStyle,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.access_time, color: AppTheme.primary),
                              Text('Hora Entrada', style: AppTheme.secundaryStyle),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.exit_to_app, color: AppTheme.primary),
                              Text('Hora  Salida', style: AppTheme.secundaryStyle),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.sell_outlined, color: AppTheme.primary),
                              Text('Estatus', style: AppTheme.secundaryStyle),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.menu, color: AppTheme.primary),
                              Text('Acciones', style: AppTheme.secundaryStyle),
                            ],
                          ),
                          //const SizedBox(width: 65),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: provider.listJSA.length,
                controller: ScrollController(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext ctx, index) {
                  return InvitadosCard(index: index, isExpanded: false);
                },
              ),
            )
          ],
        ));
  }
}
