import 'package:flutter/material.dart';

import '../../../config/theme.dart';

class ReviewsBar extends StatelessWidget {
  final int totalReviews;

  const ReviewsBar(
    this.totalReviews, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 88,
          height: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: orangeColor.withOpacity(0.5),
          ),
        ),
        Container(
          width: totalReviews * 88 / 100,
          height: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: orangeColor,
          ),
        ),
      ],
    );
  }
}
