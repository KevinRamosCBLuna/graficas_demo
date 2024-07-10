import 'dart:convert';

class CitasModels {
    int? id;
    String? name;
    String? ine;
    String? imms;
    String? sat;
    String? status;

    CitasModels({
        this.id,
        this.name,
        this.ine,
        this.imms,
        this.sat,
        this.status,
    });

    factory CitasModels.fromJson(String str) => CitasModels.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CitasModels.fromMap(Map<String, dynamic> json) => CitasModels(
        id: json["id"],
        name: json["name"],
        ine: json["INE"],
        imms: json["IMMS"],
        sat: json["SAT"],
        status: json["Status"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "INE": ine,
        "IMMS": imms,
        "SAT": sat,
        "Status": status,
    };
}
