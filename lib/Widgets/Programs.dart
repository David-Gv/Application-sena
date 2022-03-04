import 'package:flutter/material.dart';
import 'package:proyecto_sena/Models/FutureProgram.dart';

class Programs extends StatefulWidget{
  Programs({Key? key, nombreArea}) : super(key: key);

  @override
  State<Programs> createState() => _ProgramasState();
}

class _ProgramasState extends State<Programs> {
  var programas;

  @override
   Widget build(BuildContext context) {
    return FutureBuilder(
      future: PostPrograms(programas),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return GridView.count(
            crossAxisCount: 1,
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}