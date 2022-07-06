import 'package:flutter/material.dart';

import '../../../config/constant.dart';
import '../../../config/theme.dart';
import 'star_widget.dart';

class ReviewBoxWidget extends StatelessWidget {
  const ReviewBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.phoneWidthMargin(context),
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: greyBorderColor, width: 1),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.png'),
                  ),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                'Nana Ramadhan',
                style: textTheme(context).titleSmall!.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: blackColor),
              ),
              const Spacer(),
              Text(
                '1 Month ago',
                style: textTheme(context)
                    .titleSmall!
                    .copyWith(fontSize: 10, color: greyColor),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const StarWidget(5),
          const SizedBox(
            height: 4,
          ),
          Text(
            '"the product is very good and comfortable, especially the color i really lke, delivery is very fast"',
            style: textTheme(context)
                .titleSmall!
                .copyWith(fontSize: 10, color: greyColor),
          ),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            height: 36,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Container(
                  width: 36,
                  height: 36,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/sofa/hemlingby-chair.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
