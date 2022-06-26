import 'package:flutter/material.dart';

import '../../../config/constant.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Image.asset(
            'assets/icons/drawer-icon.png',
            width: 24,
            height: 24,
          ),
        ),
        Text(
          'Furnitour',
          style: textTheme(context).headlineLarge,
        ),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Image.asset(
            'assets/icons/cart-icon.png',
            width: 24,
            height: 24,
          ),
        ),
      ],
    );
  }
}
