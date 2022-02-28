import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Areas extends StatelessWidget {
  const Areas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Areas>>(
      future: obtenerAreas(),
      builder: 
        (BuildContext context, AsyncSnapshot<List<Areas>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
             List<Areas> areas = snapshot.data;

             return construirListaAreas(areas);
          }
          return Center(child: CircularProgressIndicator());
        }

    );
  }

  ListView construirListaAreas(List<Areas> areas){
    return ListView.builder(
      itemCount: areas.length,
      itemBuilder: (BuildContext context, int index) {
        
      }
    )
  }



  

//   Future<List<Areas>> obtenerAreas() async {
//   final url = Uri.parse('https://softwaredjgv.000webhostapp.com');
//   final response = await http.get(url);
//   /* print(response.body); */
//   /* List<Area> areas = []; */
//   if (response.statusCode == 200) {
//     return areasFromJson(response.body);
//   } else {
//     throw Exception('Failed to load area');
//   }
// }
}