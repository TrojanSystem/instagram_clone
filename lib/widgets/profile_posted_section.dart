import 'package:flutter/material.dart';

import '../insta_method/insta_method.dart';
class ProfilePostedSection extends StatelessWidget {
  const ProfilePostedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.7,
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              const SliverAppBar(backgroundColor: Colors.black,
                toolbarHeight: 20,
                //  floating: true,
                pinned: true,
                collapsedHeight: 20,
                bottom: TabBar(
                  padding: EdgeInsets.only(bottom: 10),
                  tabs: [
                    Icon(Icons.menu_outlined, size: 30,),
                    Icon(Icons.video_call_outlined, size: 30,),
                    Icon(Icons.account_box, size: 30,),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              buildImages(),
              buildImages(),
              buildImages(),
            ],
          ),
        ),
      ),
    );
  }
}
