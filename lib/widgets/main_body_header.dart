import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainBodyHeader extends StatelessWidget {
  const MainBodyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16),
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/p2.jpg'),
                    ),
                    shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                'hena123',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              MdiIcons.dotsVertical,
              color: Colors.white,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
