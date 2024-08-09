import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:graficas_demo/models/QR/citas_models.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:appwrite/appwrite.dart';

class QRProvider extends ChangeNotifier {
  List<PlutoRow> rows = [];
  PlutoGridStateManager? stateManager;
  bool loadingGrid = false;
  int pageRowCount = 10;
  int page = 1;
  final searchController = TextEditingController();
  List<CitasModels> listJSA = [];

  final Client appwriteClient;
  late final Databases database;

  QRProvider(this.appwriteClient) {
    database = Databases(appwriteClient);
  }

  Future<void> updateState() async {
    await getInvitados();
  }

  Future<void> getInvitados() async {
    try {
      rows.clear();

      // Ejemplo de consulta para obtener documentos de una colección
      var response = await database.listDocuments(
        databaseId: '6684991a001877ba26e5', // Reemplaza con el ID de tu base de datos en Appwrite
        collectionId: '668499220008d06c46e0', // Reemplaza con el ID de tu colección en Appwrite
      );
      // Procesar los datos de respuesta
      List<dynamic> documents = response.documents;

      // Imprimir los documentos en la consola
      for (var doc in documents) {
        log(doc); // Imprime cada documento en la consola
      }

      if (stateManager != null) stateManager!.notifyListeners();
      notifyListeners();
    } catch (e) {
      log('Error en getInvitados() - $e');
    }
  }
}
