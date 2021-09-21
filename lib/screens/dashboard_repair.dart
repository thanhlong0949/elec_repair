// ignore_for_file: prefer_const_constructors

import 'package:elec_repair/shared/category_repair.dart';
import 'package:flutter/material.dart';

import '../shared/background_screen.dart';
import '../shared/bottom_nav_repair.dart';
import '../shared/info_repair.dart';
import '../shared/post.dart';

class DashboardRepair extends StatefulWidget {
  const DashboardRepair({Key? key}) : super(key: key);

  @override
  State<DashboardRepair> createState() => _DashboardRepairState();
}

class _DashboardRepairState extends State<DashboardRepair>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

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

          // add category repair
          CategoryRepair(),

          // add filter distance
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 120, 50, 0),
            child: TextField(
              keyboardType: TextInputType.number,
              cursorColor: HexColor('#54D3C2'),
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: HexColor('#54D3C2')
                  )
                ),
                enabledBorder:  UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: HexColor('#54D3C2')
                  )
                ),
                focusColor: HexColor('#54D3C2'),
                label: Text('Khoảng cách sửa chữa...'),
                labelStyle: TextStyle(color: HexColor('#54D3C2')),
                hintText: 'Nhập khoảng cách (km)',
                suffixIcon: Icon(
                  Icons.search,
                  color: HexColor('#54D3C2'),
                ),
              ),
            ),
          ),

          //add list post
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 325, 0, 0),
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  itemCount: 3,
                  padding: const EdgeInsets.only(top: 8),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    const int count = 3 > 10 ? 10 : 3;
                    final Animation<double> animation =
                        Tween<double>(begin: 0.0, end: 1.0).animate(
                            CurvedAnimation(
                                parent: animationController!,
                                curve: Interval((1 / count) * index, 1.0,
                                    curve: Curves.fastOutSlowIn)));
                    animationController?.forward();
                    return Post(
                      callback: () {},
                      animation: animation,
                      animationController: animationController!,
                    );
                  },
                ),
              )
            ),
        ],
      ),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
