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
                  backgroundImage: AssetImage('assets/avatar.png'),
                  radius: 40.0,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nguyễn Văn B',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'Đánh giá:',
                              style: TextStyle(fontSize: 18),
                            ),
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
                  Icons.notifications,
                  size: 30.0,
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
        Icons.star_rate,
        color: Colors.yellow,
      );

      icons.add(icon);
    }

    return icons;
  }
}
