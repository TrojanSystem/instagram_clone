import 'package:flutter/material.dart';

import '../insta_constants.dart';
import '../insta_method/insta_method.dart';
import '../widgets/profile_header.dart';

class InstaProfileScreen extends StatelessWidget {
  const InstaProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const ProfileHeader(),
            Expanded(
              flex: 7,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                currentProfileWithOutBorder(
                                    profileWidth: 110.0, profileHeight: 110.0),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    'Surafel Terefe',
                                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    'Born to Love',
                                    style: TextStyle(color: Colors.white,fontSize: 16),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    'Suretion747@gmail.com',
                                    style: TextStyle(color: Colors.white,fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                          buildProfileData(data: '47', title: 'Posts'),
                          buildProfileData(data: '228', title: 'Followers'),
                          buildProfileData(data: '530', title: 'Following'),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: DefaultTabController(
                        length: 2,
                        initialIndex: 0,
                        child: NestedScrollView(
                          headerSliverBuilder: (context, value) {
                            return [
                              const SliverAppBar(
                                toolbarHeight: 60,
                                //  floating: true,
                                pinned: true,
                                collapsedHeight: 60,
                                bottom: TabBar(
                                  tabs: [
                                    Icon(Icons.home),
                                    Icon(Icons.add),
                                  ],
                                ),
                              ),
                            ];
                          },
                          body: TabBarView(
                            children: [
                              buildImages(),
                              buildImages(),
                            ],
                          ),
                        ),
                      ),
                    ),
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

  Column buildProfileData({required data, required title}) {
    return Column(
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
    );
  }

  Widget buildImages() => GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 20,
      itemBuilder: (context, index) => Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/p3.jpg'),
              ),
            ),
          ));
}
