import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class SubImageProduct extends StatelessWidget {
  const SubImageProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: orangeColor, width: 2),
        image: DecorationImage(
          image: AssetImage(
            'assets/images/sofa/hemlingby-chair.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
