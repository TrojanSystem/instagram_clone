import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/profile_add_account_bottomsheet.dart';

import '../insta_constants.dart';
import '../insta_method/insta_method.dart';
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                      'Ceng_Sura',
                      style: kkCurrentProfileUserName
                  ),
                ),
                buildProfileScreenHeaderIcons(
                  iconContext: context,
                  icon: Icons.keyboard_arrow_down_rounded,
                  size: 35,
                  iconFunction: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      clipBehavior: Clip.antiAlias,
                      builder: (context) =>
                      const ProfileAddAccountBottomSheet(),
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                buildProfileScreenHeaderIcons(
                  iconContext: context,
                  icon: Icons.add_box_outlined,
                  size: 35,
                  iconFunction: pickImage,
                ),
                buildProfileScreenHeaderIcons(
                  iconContext: context,
                  icon: Icons.menu,
                  size: 35,
                  iconFunction: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
