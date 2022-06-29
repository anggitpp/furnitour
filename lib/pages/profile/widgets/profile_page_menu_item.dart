import 'package:flutter/material.dart';

import '../../../config/constant.dart';
import '../../../config/theme.dart';

class ProfilePageMenuItem extends StatelessWidget {
  final String image;
  final String text;
  const ProfilePageMenuItem({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.phoneWidthMargin(context),
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 12),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: orangeColor.withOpacity(0.10),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Image.asset(
              image,
              width: 24,
              height: 24,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            text,
            style: textTheme(context).labelMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          )
        ],
      ),
    );
  }
}
