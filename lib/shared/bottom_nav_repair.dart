// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class BottomNavRepair extends StatelessWidget {
  const BottomNavRepair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.brown.shade600,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        BottomNavigationBarItem(
          title: Text('Trang chủ'),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text('Lịch sử'),
          icon: Icon(Icons.history),
        ),
        BottomNavigationBarItem(
          title: Text('Cài đặt'),
          icon: Icon(Icons.settings),
        )
      ],
    );
  }
}
