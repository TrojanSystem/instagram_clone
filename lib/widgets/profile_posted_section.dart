import 'package:flutter/material.dart';

import '../insta_method/insta_method.dart';

class ProfilePostedSection extends StatelessWidget {
  const ProfilePostedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              const SliverAppBar(
                backgroundColor: Colors.black,
                toolbarHeight: 20,
                //  floating: true,
                pinned: true,
                collapsedHeight: 20,
                bottom: TabBar(
                  padding: EdgeInsets.only(bottom: 10),
                  tabs: [
                    Icon(
                      Icons.menu_outlined,
                      size: 30,
                    ),
                    Icon(
                      Icons.video_call_outlined,
                      size: 30,
                    ),
                    Icon(
                      Icons.account_box,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              buildImages(),
              buildImages(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(20),
                    child: const Icon(
                      Icons.person_pin_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Photos and \nVideos of you',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Text(
                    'When people tag you in photos and \nVideos they\'ll appear here.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
