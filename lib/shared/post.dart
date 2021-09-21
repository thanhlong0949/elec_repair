// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:elec_repair/screens/dashboard_repair.dart';

class Post extends StatelessWidget {
  const Post(
      {Key? key, this.callback, this.animationController, this.animation})
      : super(key: key);

  final VoidCallback? callback;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation!.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 8, bottom: 16),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: callback,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        offset: const Offset(4, 4),
                        blurRadius: 16,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 2,
                              child: Image.asset(
                                'assets/repair.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 8, bottom: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Tivi Android Samsung',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                              color: Colors.grey.shade800,
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Icon(
                                                FontAwesomeIcons.mapMarkerAlt,
                                                size: 12,
                                                color: Colors.blue.shade400,
                                              ),
                                              Text(
                                                '3km',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color:
                                                        Colors.blue.shade300),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '157/265 p.Hiệp Phú, Thủ Đức... ',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.grey
                                                        .withOpacity(0.8)),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Icon(
                                                FontAwesomeIcons.clock,
                                                size: 12,
                                                color: HexColor('#54D3C2'),
                                              ),
                                              Text(
                                                '7days left',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: HexColor('#54D3C2')),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '21/09/2021 - 27/09/2021',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.grey
                                                        .withOpacity(0.8)),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Vấn đề: Không khởi động được thiết bị',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey.shade800),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, bottom: 0, top: 20),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          'a hour ago',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                            color: Colors.grey.withOpacity(0.8),
                                          ),
                                        ),
                                        CircleAvatar(
                                          backgroundColor: HexColor('#54D3C2'),
                                          radius: 24.0,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/thewitcher.png'),
                                            radius: 22.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(32.0),
                              ),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   final sizeWidth = MediaQuery.of(context).size.width;

  //   return Padding(
  //     padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
  //     child: Container(
  //       width: sizeWidth,
  //       // height: sizeHeight * 0.65,
  //       child: Padding(
  //         padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
  //         child: ListView(
  //           children: generatePost(3, sizeWidth),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // List<Widget> generatePost(int time, double sizeWidth) {
  //   List<Widget> posts = [];

  //   for (var i = 0; i < time; i++) {
  //     Container container = Container(
  //       width: sizeWidth,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.all(Radius.circular(15)),
  //         boxShadow: <BoxShadow>[
  //           BoxShadow(
  //             color: Colors.grey.withOpacity(0.6),
  //             offset: const Offset(4, 4),
  //             blurRadius: 16,
  //           ),
  //         ],
  //         color: Colors.white
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
  //         child: Column(
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 CircleAvatar(
  //                   backgroundImage: AssetImage('assets/avatar.png'),
  //                   radius: 25.0,
  //                 ),
  //                 Expanded(
  //                   child: Padding(
  //                     padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       // ignore: prefer_const_literals_to_create_immutables
  //                       children: [
  //                         Text(
  //                           'Trần Văn A',
  //                           style: TextStyle(
  //                               fontWeight: FontWeight.bold, fontSize: 18.0),
  //                         ),
  //                         SizedBox(
  //                           height: 2,
  //                         ),
  //                         Text(
  //                           'Khoảng cách: 3km',
  //                           style: TextStyle(fontSize: 15),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //                 Icon(Icons.more_vert)
  //               ],
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               // ignore: prefer_const_literals_to_create_immutables
  //               children: [
  //                 Text(
  //                   'Vẫn đề: Tivi không lên hình',
  //                   style: TextStyle(fontSize: 18),
  //                 ),
  //                 Text(
  //                   'Thiết bị: A90J BRAVIA XR',
  //                   style: TextStyle(fontSize: 18),
  //                 ),
  //                 Text(
  //                   'Hãng: Sony',
  //                   style: TextStyle(fontSize: 18),
  //                 ),
  //                 Text(
  //                   'data',
  //                   style: TextStyle(fontSize: 18),
  //                 ),
  //                 Image(image: AssetImage('assets/repair.jpg'))
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     );

  //     // create space white
  //     SizedBox sizedBox = SizedBox(
  //       height: 20,
  //     );

  //     // add container to list post
  //     posts.add(container);

  //     // add sizeBox to list post
  //     posts.add(sizedBox);
  //   }

  //   return posts;
  // }
}
