import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../insta_method/insta_method.dart';
import 'insta_reel_video_player.dart';

class InstaReelScreen extends StatelessWidget {
  const InstaReelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const ReelVideoPlayer(),
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
              bottomPad: MediaQuery.of(context).size.height * 0.32,
              rightPad: 20.0,
              context: context,
              reelIcon: Icons.chat_bubble_outline,
              reelReaction: '1,262',
            ),
            buildReelIcons(
              reelReactionTag: '67.1k',
              reelIcon: Icons.send_outlined,
              topPad: MediaQuery.of(context).size.height * 0.55,
              rightPad: 20.0,
            ),
            buildReelIcons(
              reelReactionTag: '',
              reelIcon: MdiIcons.dotsVertical,
              topPad: MediaQuery.of(context).size.height * 0.67,
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

}


