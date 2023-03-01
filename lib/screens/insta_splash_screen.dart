import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../insta_method/insta_method.dart';
import '../widgets/main_body.dart';
import '../widgets/main_body_footer.dart';
import '../widgets/main_body_header.dart';

class InstaSplash extends StatelessWidget {
  InstaSplash({Key? key}) : super(key: key);
  List storyList = [
    {'name': 'johnnyVegas', 'images': 'assets/images/p1.jpg'},
    {'name': 'hena123', 'images': 'assets/images/p2.jpg'},
    {'name': 'eskibidi', 'images': 'assets/images/p4.jpg'},
    {'name': 'sisoco', 'images': 'assets/images/p3.jpg'},
    {'name': 'eskibidi', 'images': 'assets/images/p4.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            buildFrontPageLogo(),
            Expanded(
              flex: 2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildStoryListProfile(),
                  buildStoryList(
                      width: 90.0,
                      height: 90.0,
                      storyImage: storyList[0]['images'],
                      storyTitle: storyList[0]['name']),
                  buildStoryList(
                      width: 90.0,
                      height: 90.0,
                      storyImage: storyList[1]['images'],
                      storyTitle: storyList[1]['name']),
                  buildStoryList(
                      width: 90.0,
                      height: 90.0,
                      storyImage: storyList[2]['images'],
                      storyTitle: storyList[2]['name']),
                  buildStoryList(
                      width: 90.0,
                      height: 90.0,
                      storyImage: storyList[3]['images'],
                      storyTitle: storyList[3]['name']),
                  buildStoryList(
                      width: 90.0,
                      height: 90.0,
                      storyImage: storyList[4]['images'],
                      storyTitle: storyList[4]['name']),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.63,
                    child: ListView(
                      children: const [
                        MainBodyHeader(),
                        MainBody(),
                        MainBodyFooter(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


