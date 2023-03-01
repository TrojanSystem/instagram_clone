import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/insta_splash_screen.dart';

class InstaHomePage extends StatefulWidget {
  const InstaHomePage({Key? key}) : super(key: key);

  @override
  State<InstaHomePage> createState() => _InstaHomePageState();
}

class _InstaHomePageState extends State<InstaHomePage> {
  int screenIndex = 0;

  List screenPage = [
    InstaSplash(),
    InstaSplash(),
    InstaSplash(),
    InstaSplash(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenPage[screenIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.home_outlined,color: Colors.white,size: 35,),
              const Icon(Icons.search,color: Colors.white,size: 35,),
              const Icon(Icons.add_box_outlined,color: Colors.white,size: 35,),
              const Icon(Icons.video_call_outlined,color: Colors.white,size: 35,),
              Container(
                margin: const EdgeInsets.only(left: 1),
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/p2.jpg'),
                    ),
                    shape: BoxShape.circle),
              )
            ],
          ),
        ),
      ),
    );
  }
}
