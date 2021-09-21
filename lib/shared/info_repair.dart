// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class InfoRepair extends StatelessWidget {
  const InfoRepair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Container(
      width: sizeWidth,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue.shade100,
                  radius: 40.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/thewitcher.png'),
                    radius: 37.0,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nguyễn Văn Quýt',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Thợ sửa chữa',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 0.0,
                        ),
                        Row(
                          children: [
                            Row(
                              children: generateIcon(5),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.notifications_on_outlined,
                  size: 25.0,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<Icon> generateIcon(int num) {
    List<Icon> icons = [];

    for (var i = 0; i < num; i++) {
      Icon icon = Icon(
        Icons.star_rate_rounded,
        color: Colors.yellow,
        size: 18,
      );

      icons.add(icon);
    }

    return icons;
  }
}