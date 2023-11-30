import 'package:flutter/material.dart';

class PruebaSeaborn extends StatelessWidget {
  const PruebaSeaborn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SeaBorn Image'),
        ),
        body: Center(
          child: Image.asset("lib/assets/grafica/grafica_seaborn.png"), // Ruta a la imagen en tus activos
        ));
  }
}
