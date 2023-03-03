import 'package:flutter/material.dart';
class MainBody extends StatelessWidget {
  const MainBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height * 0.30,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/m2.jpg'),
          ),
        ),
      ),
    );
  }
}