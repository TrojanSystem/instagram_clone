import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../insta_constants.dart';

Expanded buildFrontPageLogo() {
  return Expanded(
    flex: 1,
    child: Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(left: 16, right: 16),
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
        width: 70,
        height: 70,
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
      const SizedBox(
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

Widget currentProfileWithBorder({profileWidth, profileHeight}) {
  return Container(
    margin: const EdgeInsets.only(left: 1),
    width: profileWidth,
    height: profileHeight,
    decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white),
        shape: BoxShape.circle),
    child: Container(
      width: profileWidth,
      height: profileHeight,
      decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/p2.jpg'),
          ),
          shape: BoxShape.circle),
    ),
  );
}

Widget buildProfileScreenHeaderIcons(
    {required BuildContext iconContext,
    required VoidCallback iconFunction,
    required IconData icon,
    required double size}) {
  return IconButton(
    onPressed: iconFunction,
    icon: Icon(
      icon,
      color: Colors.white,
      size: size,
    ),
  );
}

Widget currentProfileWithOutBorder({profileWidth, profileHeight}) {
  return Container(
    margin: const EdgeInsets.only(left: 1),
    width: profileWidth,
    height: profileHeight,
    decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/p2.jpg'),
        ),
        shape: BoxShape.circle),
  );
}

Positioned buildReelCurrentMusic() {
  return Positioned(
    left: 10,
    bottom: 10,
    child: Row(
      children: const [
        Icon(
          Icons.bar_chart,
          color: Colors.white,
          size: 30,
        ),
        Text(
          'creativeflowss. Original audio',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    ),
  );
}

Widget buildReelCurrentVideoDescription(BuildContext context) {
  return Positioned(
    bottom: MediaQuery.of(context).size.height * 0.3,
    child: Row(
      children: [
        buildCurrentReelProfile(
          context: context,
          rightPad: 20,
          bottomPad: MediaQuery.of(context).size.height * 0.05,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8),
          child: Text(
            'creativeflowss',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          width: 80,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 3,
              color: Colors.white,
            ),
          ),
          child: const Center(
            child: Text('Follow'),
          ),
        )
      ],
    ),
  );
}
Widget buildProfileData({required data, required title,context}) {
  return Padding(
    padding:  EdgeInsets.only(left: 8.0,top: MediaQuery.of(context).size.height*0.07),
    child: Column(
      children: [
        Text(
          data,
          style: kkProfileData,
        ),
        Text(
          title,
          style: kkProfileDataTitle,
        ),
      ],
    ),
  );
}

Widget buildImages() => GridView.builder(
    gridDelegate:
    const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    itemCount: 20,
    itemBuilder: (context, index) => Container(
      margin: const EdgeInsets.all(4),
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover,
          image: AssetImage('assets/images/p3.jpg'),
        ),
      ),
    ));

Widget buildCurrentReelProfile({context, rightPad, bottomPad}) {
  return Positioned(
    right: 20,
    bottom: bottomPad,
    child: Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/p2.jpg'),
        ),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 3,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget buildReelReactionIcon(
    {required context,
    required reelIcon,
    required reelReaction,
    required bottomPad,
    required rightPad}) {
  return Positioned(
    right: rightPad,
    bottom: bottomPad,
    child: Column(
      children: [
        Icon(
          reelIcon,
          size: 25,
          color: Colors.white,
        ),
        Text(
          reelReaction,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        )
      ],
    ),
  );
}

Widget buildReelIcons(
    {required reelIcon,
    required topPad,
    required rightPad,
    required reelReactionTag}) {
  return Positioned(
    top: topPad,
    right: rightPad,
    child: Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            reelIcon,
            color: Colors.white,
            size: 25,
          ),
        ),
        Text(
          reelReactionTag,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        )
      ],
    ),
  );
}

Widget buildStoryList({storyImage, storyTitle, width, height}) {
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

      Text(
        storyTitle,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}
