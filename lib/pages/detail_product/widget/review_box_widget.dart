import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

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
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: '#EEEEEE'.toColor(), width: 1),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                'Nana Ramadhan',
                style: textTheme(context).titleSmall!.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: blackColor),
              ),
              Spacer(),
              Text(
                '1 Month ago',
                style: textTheme(context)
                    .titleSmall!
                    .copyWith(fontSize: 10, color: greyColor),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          StarWidget(5),
          SizedBox(
            height: 4,
          ),
          Text(
            '"the product is very good and comfortable, especially the color i really lke, delivery is very fast"',
            style: textTheme(context)
                .titleSmall!
                .copyWith(fontSize: 10, color: greyColor),
          ),
          SizedBox(
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
                  margin: EdgeInsets.only(right: 6),
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
