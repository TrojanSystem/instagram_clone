import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/insta_splash_screen.dart';

void main() {
  runApp(const InstaClone());
}

class InstaClone extends StatelessWidget {
  const InstaClone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const InstaSplash(),
    );
  }
}


