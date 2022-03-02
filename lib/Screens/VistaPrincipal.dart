// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:proyecto_sena/Widgets/Background.dart';
import 'package:proyecto_sena/Widgets/CustomBottomNavigation.dart';
import 'package:proyecto_sena/Widgets/PageTitle.dart';
import 'package:proyecto_sena/Widgets/ConsumeArea.dart';

class VistaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children:[ 
            Background(),
            //_Homebody(),
            ConsumeArea(),
        ]
      ),
      bottomNavigationBar: CustomBottomNavigation()
    );
  }
}

class _Homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: Column(
      children: [
        PageTitle(),
        SizedBox(height: 40,),
        
       
      ]
    ));
  }


}


