import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../config/constant.dart';
import '../../../config/theme.dart';

class CartListItem extends StatelessWidget {
  const CartListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: false,
          onChanged: (newValue) {},
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: const AssetImage(
                          'assets/images/sofa/hemlingby-chair.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tommyard Table',
                      style: textTheme(context).labelMedium,
                    ),
                    Text(
                      'Kitchen Room',
                      style:
                          textTheme(context).bodySmall!.copyWith(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'id_ID', decimalDigits: 0, symbol: 'Rp ')
                          .format(2559150),
                      style: textTheme(context).labelMedium,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: AppSizes.phoneWidthMargin(context) - 70,
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/move-wishlist-icon.png',
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Move to Wishlist',
                    style: textTheme(context).bodySmall,
                  ),
                  Spacer(),
                  Container(
                    width: 82,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    height: 28,
                    decoration: BoxDecoration(
                      color: blackColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          '6',
                          style: textTheme(context)
                              .labelMedium!
                              .copyWith(color: Colors.white),
                        ),
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: AppSizes.phoneWidthMargin(context) - 70,
              height: 1,
              alignment: Alignment.centerRight,
              color: greyBorderColor,
            ),
          ],
        ),
      ],
    );
  }
}
