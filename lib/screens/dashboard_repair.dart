// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../shared/background_screen.dart';
import '../shared/bottom_nav_repair.dart';
import '../shared/info_repair.dart';
import '../shared/post.dart';

class DashboardRepair extends StatelessWidget {
  const DashboardRepair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavRepair(),
      body: Stack(
        children: [
          // add background
          BackgroundScreen(),

          // add info repairer
          InfoRepair(),

          // add filter distance
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 120, 50, 0),
            child: TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.brown.shade900,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown.shade900)),
                focusColor: Colors.brown.shade700,
                label: Text('Khoảng cách'),
                labelStyle: TextStyle(color: Colors.brown.shade900),
                hintText: 'Nhập khoảng cách (km)',
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.brown.shade900,
                ),
              ),
            ),
          ),

          // add list post
          Post(),
        ],
      ),
    );
  }
}
