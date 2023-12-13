//import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graficas_demo/theme/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('data'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(onPressed: () => Navigator.pop(context), child: const Text('Ok'))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('data'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(onPressed: () => Navigator.pop(context), child: const Text('Ok'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryBackground,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'El URL Solicitado No Existe',
              style: TextStyle(
                color: AppTheme.primary,
                fontSize: 50,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                /* style: ElevatedButton.styleFrom(
                  primary: Colors.cyan, shape: const StadiumBorder(), elevation: 0),*/
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Regresar a Home',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                //onPressed: () => displayDialogAndroid(context),
                //onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIos(context),
                onPressed: () => Navigator.pushNamed(context, 'home'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
