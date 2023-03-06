import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class InstaPostScreen extends StatefulWidget {
  const InstaPostScreen({Key? key}) : super(key: key);

  @override
  State<InstaPostScreen> createState() => _InstaPostScreenState();
}

class _InstaPostScreenState extends State<InstaPostScreen> {
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

  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickVideo(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
      _controller = VideoPlayerController.file(imageTemp)..initialize().then((_) {
          setState(() {});
          _controller.play();
        });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            if (_controller != null)
              _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container()
            else
              Text(
                "Click on Pick Video to select video",
                style: TextStyle(fontSize: 18.0),
              ),
            // RaisedButton(
            //   onPressed: () {
            //     _pickVideo();
            //   },
            //   child: Text("Pick Video From Gallery"),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:pickImage,
        child: Icon(Icons.add),
      ),
    );
  }
}
