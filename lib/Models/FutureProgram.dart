import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:proyecto_sena/Models/ProgramsPost.dart';

Future<List<Program>> PostPrograms(programas) async {
  final url = Uri.parse('https://aplicativo-sena.000webhostapp.com/programas.php');
  final response = await http.post(url, body: jsonEncode(programas));
  if (response.statusCode == 200) {
    return programFromJson(response.body);
  } else {
    throw Exception(response.body);
  }
}