import 'package:flutter/material.dart';

import '../insta_constants.dart';
import '../insta_method/insta_method.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_header_body_section.dart';
import '../widgets/profile_posted_section.dart';

class InstaProfileScreen extends StatelessWidget {
  const InstaProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery
        .of(context)
        .size
        .height;
    final deviceWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const ProfileHeader(),
            Expanded(
              flex: 6,
              child: SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: ListView(
                  children: [
                    ProfileDataSection(
                        deviceWidth: deviceWidth, deviceHeight: deviceHeight),
                    const ProfilePostedSection(),
                    Container(
                      color: Colors.green,
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
