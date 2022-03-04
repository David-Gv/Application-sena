import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:proyecto_sena/Models/ProgramsPost.dart';

Future<List<Program>> PostPrograms(programas) async {
  final url = Uri.parse('https://aplicativo-sena.000webhostapp.com/programas.php');
  final respuesta = await http.post(url, body:programas);
  if (respuesta.statusCode == 200) {
    print("respuesta.body");
    return programFromJson(respuesta.body);
  } else {
    throw Exception('Failed to load area');
  }
}

