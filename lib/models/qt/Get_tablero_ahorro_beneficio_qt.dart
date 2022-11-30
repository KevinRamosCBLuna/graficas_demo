// To parse this JSON data, do
//
//     final getTableroAhorroBeneficioQt = getTableroAhorroBeneficioQtFromMap(jsonString);

// ignore_for_file: file_names

//import 'package:meta/meta.dart';
import 'dart:convert';

GetTableroAhorroBeneficioQt getTableroAhorroBeneficioQtFromMap(String str) =>
    GetTableroAhorroBeneficioQt.fromMap(json.decode(str));

String getTableroAhorroBeneficioQtToMap(GetTableroAhorroBeneficioQt data) =>
    json.encode(data.toMap());

class GetTableroAhorroBeneficioQt {
  GetTableroAhorroBeneficioQt({
    required this.data,
    required this.status,
    required this.error,
    required this.count,
  });

  final List<Datum> data;
  final int status;
  final dynamic error;
  final dynamic count;

  factory GetTableroAhorroBeneficioQt.fromMap(Map<String, dynamic> json) =>
      GetTableroAhorroBeneficioQt(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
        status: json["status"],
        error: json["error"],
        count: json["count"],
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "status": status,
        "error": error,
        "count": count,
      };
}

class Datum {
  Datum({
    required this.idproveedor,
    required this.proveedor,
    required this.importe,
    required this.noFactura,
    required this.equivalencia,
    required this.fechaRegistro,
  });

  final int idproveedor;
  final String proveedor;
  final String importe;
  final String noFactura;
  final String equivalencia;
  final DateTime fechaRegistro;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        idproveedor: json["idproveedor"],
        proveedor: json["proveedor"],
        importe: json["importe"].toString(),
        noFactura: json["no_factura"],
        equivalencia: json["equivalencia"].toString(),
        fechaRegistro: DateTime.parse(json["fecha_registro"]),
      );

  Map<String, dynamic> toMap() => {
        "idproveedor": idproveedor,
        "proveedor": proveedor,
        "importe": importe,
        "no_factura": noFactura,
        "equivalencia": equivalencia,
        "fecha_registro":
            "${fechaRegistro.year.toString().padLeft(4, '0')}-${fechaRegistro.month.toString().padLeft(2, '0')}-${fechaRegistro.day.toString().padLeft(2, '0')}",
      };
}
