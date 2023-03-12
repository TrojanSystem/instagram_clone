import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/insta_method/insta_method.dart';
import 'package:video_player/video_player.dart';

import 'insta_new_live_screen.dart';
import 'insta_new_post_screen.dart';
import 'insta_new_reel_screen.dart';
import 'insta_new_story_screen.dart';

class InstaPostScreen extends StatefulWidget {
  const InstaPostScreen({Key? key}) : super(key: key);

  @override
  State<InstaPostScreen> createState() => _InstaPostScreenState();
}

class _InstaPostScreenState extends State<InstaPostScreen> {
 final control =ScrollController();
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/images/reel.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
        _controller.play();
      });
  }

int screenIndex = 0;
  List screenName = ['Post', 'Story', 'Reel', 'Live'];
  List screen =  [
     InstaNewPostScreen(),
    Container(color: Colors.black,),
    Container(color: Colors.black,),Container(color: Colors.black,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Column(
          //   children: <Widget>[
          //     if (_controller != null)
          //       _controller.value.isInitialized
          //           ? AspectRatio(
          //               aspectRatio: _controller.value.aspectRatio,
          //               child: VideoPlayer(_controller),
          //             )
          //           : Container()
          //     else
          //       const Text(
          //         "Click on Pick Video to select video",
          //         style: TextStyle(fontSize: 18.0),
          //       ),
          //     // RaisedButton(
          //     //   onPressed: () {
          //     //     _pickVideo();
          //     //   },
          //     //   child: Text("Pick Video From Gallery"),
          //     // ),
          //   ],
          // ),
          PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: screen.length,
            itemBuilder: (BuildContext context, int index) {
              return screen[screenIndex];
            },
          ),
          Positioned(
            right: 0,
            bottom: 10,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.65,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: screenName.length,
                itemBuilder: (context, index) {


                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        screenIndex = index;
                        if(screenIndex == 1 || screenIndex==2||screenIndex==3){
                          pickImage();
                        }else{
                          pickPostImage();
                        }
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18),
                      child: Center(
                        child: Text(
                          screenName[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
