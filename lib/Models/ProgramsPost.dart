// To parse this JSON data, do
//
//     final program = programFromJson(jsonString);

import 'dart:convert';

List<Program> programFromJson(String str) => List<Program>.from(json.decode(str).map((x) => Program.fromJson(x)));

String programToJson(List<Program> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Program {
    Program({
        this.codigoPrograma = "",
        this.nombrePrograma = "",
        this.tipoPrograma = "",
        required this.nombreArea2,
    });

    String codigoPrograma;
    String nombrePrograma;
    String tipoPrograma;
    String nombreArea2;

    factory Program.fromJson(Map<String, dynamic> json) => Program(
        codigoPrograma: json["codigo_programa"],
        nombrePrograma: json["nombre_programa"],
        tipoPrograma: json["tipo_programa"],
        nombreArea2: json["nombre_area2"],
    );

    Map<String, dynamic> toJson() => {
        "codigo_programa": codigoPrograma,
        "nombre_programa": nombrePrograma,
        "tipo_programa": tipoPrograma,
        "nombre_area2": nombreArea2,
    };
}
