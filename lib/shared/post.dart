// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 230, 0, 0),
      child: Container(
        width: sizeWidth,
        // height: sizeHeight * 0.65,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: ListView(
            children: generatePost(3, sizeWidth),
          ),
        ),
      ),
    );
  }

  List<Widget> generatePost(int time, double sizeWidth) {
    List<Widget> posts = [];

    for (var i = 0; i < time; i++) {
      Container container = Container(
        width: sizeWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white70),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.png'),
                    radius: 25.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Trần Văn A',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Khoảng cách: 3km',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Vẫn đề: Tivi không lên hình',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Thiết bị: A90J BRAVIA XR',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Hãng: Sony',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'data',
                    style: TextStyle(fontSize: 18),
                  ),
                  Image(image: AssetImage('assets/repair.jpg'))
                ],
              )
            ],
          ),
        ),
      );

      // create space white
      SizedBox sizedBox = SizedBox(
        height: 20,
      );

      // add container to list post
      posts.add(container);

      // add sizeBox to list post
      posts.add(sizedBox);
    }

    return posts;
  }
}
