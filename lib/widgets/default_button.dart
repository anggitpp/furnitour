import 'package:flutter/material.dart';

import '../config/constant.dart';
import '../config/theme.dart';

class DefaultButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  const DefaultButton({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: orangeColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0),
        child: Text(
          text,
          style: textTheme(context)
              .titleSmall!
              .copyWith(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}
