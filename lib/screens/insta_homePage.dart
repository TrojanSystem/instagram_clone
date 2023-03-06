import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/screens/insta_splash_screen.dart';
import 'package:video_player/video_player.dart';

import '../insta_method/insta_method.dart';
import 'insta_post_screen.dart';
import 'insta_profile_screen.dart';
import 'insta_reel_screen.dart';
import 'insta_search_screen.dart';

class InstaHomePage extends StatefulWidget {
  const InstaHomePage({Key? key}) : super(key: key);

  @override
  State<InstaHomePage> createState() => _InstaHomePageState();
}

class _InstaHomePageState extends State<InstaHomePage> {
  int screenIndex = 0;
  late VideoPlayerController _controller;
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickVideo(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
      _controller = VideoPlayerController.file(imageTemp)
        ..initialize().then((_) {
          setState(() {});
          _controller.play();
        });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  void initState() {
    super.initState();
  }

  List screenPage = [
    {
      'screen': InstaSplash(),
      "unselectedIcon": const Icon(
        Icons.home_outlined,
        color: Colors.white,
        size: 35,
      ),
      "selectedIcon": const Icon(
        Icons.home,
        color: Colors.white,
        size: 35,
      )
    },
    {
      'screen': const InstaSearchScreen(),
      "unselectedIcon": const Icon(
        Icons.search_outlined,
        color: Colors.white,
        size: 35,
      ),
      "selectedIcon": const Icon(
        Icons.search_rounded,
        color: Colors.white,
        size: 35,
      )
    },
    {
      'screen': InstaPostScreen(),
      "unselectedIcon": const Icon(
        Icons.add_box_outlined,
        color: Colors.white,
        size: 35,
      ),
      "selectedIcon": const Icon(
        Icons.add_box,
        color: Colors.white,
        size: 35,
      )
    },
    {
      'screen': const InstaReelScreen(),
      "unselectedIcon": const Icon(
        Icons.video_call_outlined,
        color: Colors.white,
        size: 35,
      ),
      "selectedIcon": const Icon(
        Icons.video_call,
        color: Colors.white,
        size: 35,
      )
    },
    {
      'screen': const InstaProfileScreen(),
      'unselectedIcon':
          currentProfileWithOutBorder(profileHeight: 50.0, profileWidth: 50.0),
      'selectedIcon':
          currentProfileWithBorder(profileWidth: 50.0, profileHeight: 50.0),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenPage[screenIndex]['screen'],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          color: Colors.black,
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: screenPage.length,
            itemBuilder: (context, index) => Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      screenIndex = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05),
                    child: screenIndex == index
                        ? screenPage[index]['selectedIcon']
                        : screenPage[index]['unselectedIcon'],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
