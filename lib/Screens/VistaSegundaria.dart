import 'package:flutter/material.dart';
import 'package:proyecto_sena/Models/ProgramsPost.dart';

class VistaSegundaria extends StatelessWidget {
  const VistaSegundaria ({Key? key, required this.programa}) : super(key: key);
  
  final List<Program> programa;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: programa.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
             child: Container(
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: Colors.black, width: 2),
              ),
              child: ListTile(
                title: Center(
                  child: Text(programa[index].nombreArea2,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                  )
                ),
                trailing: const Icon(Icons.arrow_forward_ios)
              )
            ),
          );
        }
      )
    );
  }
}























// // ignore_for_file: prefer_const_constructors_in_immutables

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:proyecto_sena/Models/ProgramsPost.dart';

// class ConsumeProgram extends StatefulWidget {
//   ConsumeProgram({Key? key, nombreArea}) : super(key: key);

//   @override
//   State<ConsumeProgram> createState() => _ConsumeProgramState();
// }

// class _ConsumeProgramState extends State<ConsumeProgram> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }

//   Future<List<Program>> PostPrograms(programas) async {
//     final url = Uri.parse("https://softwaredjgv.000webhostapp.com/programas.php");
//     final respuesta = await http.post(url, body: jsonEncode(programas));
//     if (respuesta.statusCode == 200) {
//       return programFromJson(respuesta.body);
//     } else {
//       throw Exception(respuesta.body);
//     }
//   }






  // var programas;

  // @override
  // Widget build(BuildContext context) {
  //   return FutureBuilder(
  //       future: postProgramas(programas),
  //       builder: (context, snapshot) {
  //         if (snapshot.hasData) {
  //           return GridView.count(crossAxisCount: 1);
  //         } else {
  //           return const Center(child: CircularProgressIndicator());
  //         }
  //       });
  // }

  // Future<List<Program>> postProgramas(programas) async {
  //   final headers = {'Content-Type': 'application/json'};
  //   final url =
  //       Uri.parse("https://softwaredjgv.000webhostapp.com/programas.php");
  //   final respuesta = await http.post(url, body: jsonEncode(programas));
  //   if (respuesta.statusCode == 200) {
  //     return programFromJson(respuesta.body);
  //   } else {
  //     throw Exception(respuesta.body);
  //   }
  // }

