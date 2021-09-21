// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;

    return Container(
      height: MediaQuery.of(context).size.height*0.16,
      //width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.brown[0],
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade300,
              Colors.pink.shade200,
            ]),
        image: DecorationImage(
          image: AssetImage('assets/repairbackground.png'),
          alignment: Alignment.center,
          //colorFilter: ColorFilter.mode(Colors.pink., BlendMode.modulate),
        ),
      ),
    );
  }
}
