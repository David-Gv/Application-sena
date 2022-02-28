// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xffFB6520),
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon
          (Icons.assignment_rounded, ),
          label: "Áreas"
        ),
        BottomNavigationBarItem(
          icon: Icon
          (Icons.format_align_left ),
          label: "Programación"
        ),
         BottomNavigationBarItem(
          icon: Icon( Icons.person ),
          label: "Usuario"
        )
      ]
    );
  }
}
