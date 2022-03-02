import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto_sena/Models/AreasGet.dart';

class ConsumeArea extends StatelessWidget {
  const ConsumeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Area>>(
        future: getAreas(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  var area = snapshot.data?[index];
                  return Column(
                    children: [
                      Image(image: NetworkImage(area!.logoArea), width: 180, height: 140,),
                    ],
                  );
                });
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
}

// class ConsumeArea extends StatefulWidget {
//   @override
//   State<ConsumeArea> createState() => _ConsumeAreaState();
// }

// class _ConsumeAreaState extends State<ConsumeArea> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<List<Area>>(
//         future: getAreas(),
//         builder: (BuildContext context, AsyncSnapshot<List<Area>> snapshot){
//            if (snapshot.connectionState == ConnectionState.done) {
//               List<Area> comentarios = snapshot.data;

//               return construirListaComentarios(comentarios);
//             }
//             return Center(child: CircularProgressIndicator());
//         }

//       ),
//     );
//   }

// }