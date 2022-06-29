import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 110,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: orangeColor,
                width: 2,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/profile.png',
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                color: orangeColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: Image.asset(
                'assets/icons/diamond-icon.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
