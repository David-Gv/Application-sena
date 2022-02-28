// To parse this JSON data, do
//
//     final areas = areasFromJson(jsonString);

import 'dart:convert';

List<Areas> areasFromJson(String str) => List<Areas>.from(json.decode(str).map((x) => Areas.fromJson(x)));

String areasToJson(List<Areas> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Areas {
    Areas({
        this.codigoArea = "",
        this.nombreArea = "",
        this.logoArea = "",
    });

    String codigoArea;
    String nombreArea;
    String logoArea;

    factory Areas.fromJson(Map<String, dynamic> json) => Areas(
        codigoArea: json["codigo_area"],
        nombreArea: json["nombre_area"],
        logoArea: json["logo_area"],
    );

    Map<String, dynamic> toJson() => {
        "codigo_area": codigoArea,
        "nombre_area": nombreArea,
        "logo_area": logoArea,
    };
}
