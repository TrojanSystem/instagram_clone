import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/insta_splash_screen.dart';

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
        Icons.search,
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
      'screen': const InstaPostScreen(),
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
      'unselectedIcon': Container(
        margin: const EdgeInsets.only(left: 1),
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/p2.jpg'),
            ),
            shape: BoxShape.circle),
      ),
      'selectedIcon': Container(
        margin: const EdgeInsets.only(left: 1),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.white),
            shape: BoxShape.circle),
        child: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/p2.jpg'),
              ),
              shape: BoxShape.circle),
        ),
      ),
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
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  screenIndex = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: screenIndex == index
                    ? screenPage[index]['selectedIcon']
                    : screenPage[index]['unselectedIcon'],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
