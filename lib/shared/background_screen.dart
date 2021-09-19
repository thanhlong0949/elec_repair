// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;

    return Container(
      height: sizeHeight * 0.45,
      decoration: BoxDecoration(
        color: Colors.brown.shade100,
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.brown.shade300,
              Colors.brown.shade50,
            ]),
        image: DecorationImage(
          image: AssetImage('assets/undraw_pilates_gpdb.png'),
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }
}
