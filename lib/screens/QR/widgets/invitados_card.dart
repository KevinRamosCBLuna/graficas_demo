// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/QR/qr_provider.dart';
import 'package:graficas_demo/public/colors.dart';
import 'package:graficas_demo/screens/QR/widgets/citas_pluto.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:provider/provider.dart';

class InvitadosCard extends StatefulWidget {
  final int index;
  bool isExpanded;

  InvitadosCard({required this.index, required this.isExpanded, super.key});

  @override
  State<InvitadosCard> createState() => _InvitadosCardState();
}

class _InvitadosCardState extends State<InvitadosCard> {
  @override
  Widget build(BuildContext context) {
    QRProvider provider = Provider.of<QRProvider>(context);

    return Container(
      // height: MediaQuery.of(context).size.height * 0.07,
      // width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(gradient: whiteGradient, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.grey)),
      child: SizedBox(
        child: ExpansionPanelList(
          expandedHeaderPadding: EdgeInsets.zero,
          elevation: 0,
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              backgroundColor: Colors.transparent,
              headerBuilder: (context, expanded) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        alignment: Alignment.center,
                        child: Text('${provider.listJSA[widget.index].id}', style: AppTheme.primarStyle),
                      ),
                      Visibility(
                        visible: widget.isExpanded,
                        child: Container(
                          width: 130,
                          alignment: Alignment.center,
                          child: Text(provider.listJSA[widget.index].name!, overflow: TextOverflow.ellipsis, style: AppTheme.primarStyle),
                        ),
                      ),

                      Container(
                        width: 130,
                        alignment: Alignment.center,
                        child: Visibility(
                          visible: widget.isExpanded,
                          child: Text('${provider.listJSA[widget.index].ine}', style: AppTheme.primarStyle),
                        ),
                      ),
                      Container(
                        width: 120,
                        alignment: Alignment.center,
                        child: Visibility(
                          visible: widget.isExpanded,
                          child: Text('${provider.listJSA[widget.index].imms}', style: AppTheme.primarStyle),
                        ),
                      ),
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(left: 60),
                        child: Visibility(
                          visible: widget.isExpanded,
                          child: Text((provider.listJSA[widget.index].sat!), style: AppTheme.primarStyle),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 120,
                              decoration: BoxDecoration(
                                color: statusColor(provider.listJSA[widget.index].status, context),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('${provider.listJSA[widget.index].status}', style: AppTheme.primarStyle),
                                ),
                              )),
                        ],
                      ),
                      Visibility(
                        visible: widget.isExpanded,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.menu,
                              color: AppTheme.primary,
                            ),
                            Text('Preview', style: AppTheme.primarStyle),
                          ],
                        ),
                      ),
                      //const SizedBox(width: 65),
                    ],
                  ),
                );
              },
              body: SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                      //horizontal: 24,
                      vertical: 6,
                    ),
                    child: CitasPluto(
                      iDJSA: provider.listJSA[widget.index].id ?? 0,
                    )),
              ),
              isExpanded: widget.isExpanded,
              // isExpanded: provider.istaped,
            ),
          ],
          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              widget.isExpanded = !widget.isExpanded;
            });
          },
        ),
      ),
    );
  }
}

Color statusColor(String? status, BuildContext context) {
  late Color color;

  switch (status) {
    case "Pending": // Pending
      color = AppTheme.primary;
      break;
    case "Active": //Sen. Exec. Validate
      color = Colors.green;
      break;
    case "Draft": //Finance Validate
      color = AppTheme.secondaryColor;
      break;

    default:
      return Colors.black;
  }
  return color;
}
