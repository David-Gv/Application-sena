// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [
            Color.fromARGB(255, 255, 134, 78),
            Color(0xffFB6520)
          ]
        )
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecoration,
    );
  }
}