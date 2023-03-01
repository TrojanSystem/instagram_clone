import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../insta_constants.dart';

Expanded buildFrontPageLogo() {
  return Expanded(
    flex: 1,
    child: Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Instagram',
            style: kkInstaLogo,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  MdiIcons.heartOutline,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  MdiIcons.facebookMessenger,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget buildStoryListProfile() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 8),
        width: 90,
        height: 90,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/pp.jpg'),
            ),
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.pink],
            ),
            shape: BoxShape.circle),
        child: Stack(children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                  shape: BoxShape.circle),
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ]),
      ),
      SizedBox(
        height: 8,
      ),
      const Text(
        'Your Story',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}

Widget buildStoryList({storyImage, storyTitle,width,height}) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 8),
        width: width,
        height: height,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.pink],
            ),
            shape: BoxShape.circle),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration:
              const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(storyImage),
                ),
                shape: BoxShape.circle),
          ),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        storyTitle,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}
