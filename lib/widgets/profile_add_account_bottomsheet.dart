import 'package:flutter/material.dart';

import '../insta_constants.dart';
import '../insta_method/insta_method.dart';

class ProfileAddAccountBottomSheet extends StatelessWidget {
  const ProfileAddAccountBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          bottomSheetAddAccount(),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(38.0, 8, 18, 8),
                child: Icon(
                  Icons.add_circle_outline,
                  fill: 0.5,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              Text(
                'Add account',
                style: kkCurrentProfileUserName,
              ),
            ],
          )
        ],
      ),
    );
  }

  Row bottomSheetAddAccount() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 8, 18, 8),
          child: currentProfileWithOutBorder(
              profileHeight: 70.0, profileWidth: 70.0),
        ),
        const Text(
          'Ceng_sura',
          style: kkCurrentProfileUserName,
        ),
      ],
    );
  }
}
