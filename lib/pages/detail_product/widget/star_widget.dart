import 'package:flutter/material.dart';

class StarWidget extends StatelessWidget {
  final int numberOfStars;
  const StarWidget(
    this.numberOfStars, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        numberOfStars,
        (index) => Padding(
          padding: EdgeInsets.only(right: index == numberOfStars - 1 ? 0 : 5),
          child: Image.asset(
            'assets/icons/star-icon.png',
            width: 12,
            height: 12,
          ),
        ),
      ),
    );
  }
}
