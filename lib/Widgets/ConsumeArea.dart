

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto_sena/Models/AreasGet.dart';

class ConsumeArea extends StatefulWidget {
  @override
  State<ConsumeArea> createState() => _ConsumeAreaState();
}

class _ConsumeAreaState extends State<ConsumeArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Area>>(
        future: getAreas(),
        builder: (BuildContext context, AsyncSnapshot<List<Area>> snapshot){
           if (snapshot.connectionState == ConnectionState.done) {
              List<Area> comentarios = snapshot.data;

              return construirListaComentarios(comentarios);
            }
            return Center(child: CircularProgressIndicator());
        }

      ),
    );
  }


















}







// class ConsumeArea extends StatelessWidget {
//   const ConsumeArea({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: FutureBuilder<List<Area>>(
//             future: getAreas(),
//             builder:
//                 (BuildContext context, AsyncSnapshot<List<Area>> snapshot) {
//               if (snapshot.connectionState == ConnectionState.done){
//                 List<Area> areas = snapshot.data;

//                 return construirListaArea(areas);
//               }
//               return Center(child: CircularProgressIndicator());
//             }
//       )
//     );
//   }

//   ListView construirListaArea(List<Area> areas) {
//     return ListView.builder(
//         itemCount: areas.length,
//         itemBuilder: (BuildContext context, int index) {
//           Area area = areas[index]; 
//           return Column(
//             children: [
//               ListTile(
//                 title: Text(area.nombreArea),
//               )

//             ],
//           );

//         }
//     );
//   }

//   Future<List<Area>> getAreas() async {
//     final url = Uri.parse("https://softwaredjgv.000webhostapp.com/");
//     final respuesta = await http.get(url);

//     if (respuesta.statusCode == 200) {
//       return areaFromJson(respuesta.body);
//     } else {
//       return null;
//     }
//   }
// }
