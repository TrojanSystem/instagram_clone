import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
class InstaNewPostScreen extends StatelessWidget {
   InstaNewPostScreen({Key? key}) : super(key: key);

  File? image;

  Future pickPostImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      print(imageTemp);


    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('New Post Screen'),
      ),
    );
  }
}
