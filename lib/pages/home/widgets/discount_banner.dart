import 'package:flutter/material.dart';

import '../../../config/constant.dart';
import '../../../config/theme.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          width: 300,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/discount/banner-1.png',
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          width: 160,
          height: 180,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 0),
                blurRadius: 12,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: blackColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Room Package',
                  style: textTheme(context).labelSmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 9,
                        color: Colors.white,
                      ),
                ),
              ),
              const Spacer(),
              Text(
                'New',
                style: textTheme(context)
                    .displaySmall!
                    .copyWith(color: orangeColor),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Sale Up\nTo 70% Off',
                style: textTheme(context).labelLarge!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                  color: orangeColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Buy Now',
                      style: textTheme(context).titleSmall!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 12,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
