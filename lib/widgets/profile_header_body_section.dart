import 'package:flutter/material.dart';

import '../insta_method/insta_method.dart';
class ProfileDataSection extends StatelessWidget {
   ProfileDataSection({required this.deviceHeight,required this.deviceWidth});
double deviceWidth;
double deviceHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: MediaQuery.of(context).size.height * 0.30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            // padding: const EdgeInsets.only(left: 8.0),
            child: Column(


              children: [
                Container(

                  width: deviceWidth * 0.25,
                  height: deviceHeight * 0.2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                        AssetImage('assets/images/p2.jpg'),
                      ),
                      shape: BoxShape.circle),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    'Surafel Terefe',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    'Born to Love',
                    style: TextStyle(
                        color: Colors.white, fontSize: 12),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    'Suretion747@gmail.com',
                    style: TextStyle(
                        color: Colors.white, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                buildProfileData(data: '47', title: 'Posts',context: context),
                buildProfileData(
                    data: '228', title: 'Followers',context: context),
                buildProfileData(
                    data: '530', title: 'Following',context: context),
              ],
            ),
          )
        ],
      ),
    );
  }
}
