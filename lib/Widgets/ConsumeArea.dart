// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:proyecto_sena/Models/AreasGet.dart';
// import 'package:proyecto_sena/Models/FutureProgram.dart';
// import 'package:proyecto_sena/Models/ProgramsPost.dart';
// import 'package:proyecto_sena/Screens/VistaProgramas.dart';
// import 'package:proyecto_sena/Widgets/ConsumeProgram.dart';

// class ConsumeArea extends StatelessWidget {
//   const ConsumeArea({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<Area>>(
//         future: getAreas(),
//         builder: (BuildContext context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2),
//                 scrollDirection: Axis.vertical,
//                 itemCount: snapshot.data?.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   var area = snapshot.data?[index];
//                   return GestureDetector(
//                     child: Column(
//                       children: [
//                         Image(image: NetworkImage(area!.logoArea), width: 180, height: 140,),
//                       ]
//                     ),
//                     onTap: () async {
//                       List<Program> programa;
//                       Program program = Program(nombreArea2: data[i].);
//                       programa = await PostProgramas(programa);

//                     }
//                   );

//                 });
//           }
//           return Center(child: CircularProgressIndicator());
//         });
//   }

//   Future<List<Area>> getAreas() async {
//     final url = Uri.parse("https://softwaredjgv.000webhostapp.com/");
//     final respuesta = await http.get(url);
//     if (respuesta.statusCode == 200) {
//       return areaFromJson(respuesta.body);
//     } else {
//       throw Exception('Failed to load area');
//     }
//   }
// }

// ignore_for_file: use_key_in_widget_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:proyecto_sena/Models/AreasGet.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto_sena/Models/FutureProgram.dart';
import 'package:proyecto_sena/Models/ProgramsPost.dart';
import 'package:proyecto_sena/Screens/VistaSegundaria.dart';

class ConsumeArea extends StatefulWidget {
  @override
  State<ConsumeArea> createState() => _ConsumeArea();
}

class _ConsumeArea extends State<ConsumeArea> {
  @override
  initState() {
    super.initState();
    getAreas();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getAreas(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                children: listArea(snapshot.data),
              ),
            );
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Text('Error');
          }
          return Center(child: CircularProgressIndicator());
        });
  }

  Future<List<Area>> getAreas() async {
    final url = Uri.parse("https://softwaredjgv.000webhostapp.com/");
    final respuesta = await http.get(url);
    if (respuesta.statusCode == 200) {
      return areaFromJson(respuesta.body);
    } else {
      throw Exception('Failed to load area');
    }
  }

  List<Widget> listArea(data) {
    List<Widget> area = [];
    for (var i = 0; i < data.length; i++) {
      area.add(Column(
        children: [
          GestureDetector(
             child: Column(
               children: [
                 Image(image: NetworkImage(data[i].logoArea), width: 180, height: 140,),
               ],
            ),
            onTap: () async {
              List<Program> programa;
              Program program = Program(nombreArea2: data[i].nombreArea);
              programa = await PostPrograms(jsonEncode(program));
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return Scaffold(
                    body: VistaSegundaria(programa: programa)
                  );
                }
              )
             );
            }
          )
          
        ]
      )
      );
    }
    return area;
  }
}
