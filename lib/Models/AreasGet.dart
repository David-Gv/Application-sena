// To parse this JSON data, do
//
//     final area = areaFromJson(jsonString);

import 'dart:convert';

List<Area> areaFromJson(String str) => List<Area>.from(json.decode(str).map((x) => Area.fromJson(x)));

String areaToJson(List<Area> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Area {
    Area({
        required this.codigoArea,
        required this.nombreArea,
        required this.logoArea,
    });

    String codigoArea;
    String nombreArea;
    String logoArea;

    factory Area.fromJson(Map<String, dynamic> json) => Area(
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



