import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class InstaReelScreen extends StatelessWidget {
  const InstaReelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.yellow,
            ),
            buildReelIcons(
              reelReactionTag: '',
              reelIcon: Icons.camera_alt_outlined,
              topPad: 20.0,
              rightPad: 20.0,
            ),
            buildReelReactionIcon(
              bottomPad: MediaQuery.of(context).size.height * 0.4,
              rightPad: 20.0,
              context: context,
              reelIcon: Icons.favorite_border,
              reelReaction: '14.6k',
            ),
            buildReelReactionIcon(
              bottomPad: MediaQuery.of(context).size.height * 0.3,
              rightPad: 20.0,
              context: context,
              reelIcon: Icons.chat_bubble_outline,
              reelReaction: '1,262',
            ),
            buildReelIcons(
              reelReactionTag: '67.1k',
              reelIcon: Icons.send_outlined,
              topPad: MediaQuery.of(context).size.height * 0.6,
              rightPad: 20.0,
            ),
            buildReelIcons(
              reelReactionTag: '',
              reelIcon: MdiIcons.dotsVertical,
              topPad: MediaQuery.of(context).size.height * 0.7,
              rightPad: 20.0,
            ),
            buildCurrentReelProfile(
              context: context,
              rightPad: 20,
              bottomPad: MediaQuery.of(context).size.height * 0.05,
            ),
            buildReelCurrentMusic(),
            buildReelCurrentVideoDescription(context)
          ],
        ),
      ),
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
                  padding: EdgeInsets.only(left: 8.0,right: 8),
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
                  height: 45,
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
            size: 35,
            color: Colors.white,
          ),
          Text(
            reelReaction,
            style: const TextStyle(color: Colors.white, fontSize: 20),
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
              size: 40,
            ),
          ),
          Text(
            reelReactionTag,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
