import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class MainBodyFooter extends StatelessWidget {
  const MainBodyFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          MdiIcons.heartOutline,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          MdiIcons.chatOutline,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          MdiIcons.send,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      MdiIcons.bookmarkOutline,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0,2,8,0),
              child: Text(
                '12,456 Likes',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'beCardigan',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  TextSpan(text: '   '),
                  TextSpan(
                    text: 'This is too cute',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'View all 256 Comments',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}