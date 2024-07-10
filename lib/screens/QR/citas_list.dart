import 'package:flutter/material.dart';
import 'package:graficas_demo/public/colors.dart';
import 'package:graficas_demo/screens/QR/widgets/citas_card.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/custom_scrollbar.dart';
import 'package:graficas_demo/theme/app_theme.dart';

class CitasList extends StatefulWidget {
  const CitasList({super.key});

  @override
  State<CitasList> createState() => _CitasListState();
}

class _CitasListState extends State<CitasList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Citas'),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(gradient: whiteGradient),
          child: const CustomScrollBar(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Icon(
                                Icons.document_scanner_outlined,
                                color: AppTheme.primary,
                                size: 35,
                              ))),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: SizedBox(
                          height: 40,
                          child: Text('JSA Document List', style: AppTheme.primarStyle),
                        ),
                      ),
                    ],
                  ),
                ),
                CitasCard()
              ],
            ),
          ),
        ));
  }
}
