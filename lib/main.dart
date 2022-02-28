// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'Screens/VistaBienvenidos.dart';
import 'Screens/VistaPrincipal.dart';

void main() => runApp(SenaApp());

class SenaApp extends StatelessWidget {
  const SenaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: Color(0xffFB6520)
    ));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Planeacion Y Calidad (SENA)",
        initialRoute: 'Vista-Principal',
        routes: {
          'Vista-Bienvenidos': (_) => VistaBienvenidos(),
          'Vista-Principal': (_) => VistaPrincipal()

        }
    );
  }
}
