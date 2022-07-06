import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../config/constant.dart';

class ProductCartListItem extends StatelessWidget {
  const ProductCartListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: AssetImage('assets/images/sofa/hemlingby-chair.png'),
              fit: BoxFit.cover,
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
              'MILLBERGET Chair',
              style: textTheme(context).labelMedium,
            ),
            Text(
              'Living Room',
              style: textTheme(context).bodySmall!.copyWith(fontSize: 10),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Text(
                  NumberFormat.currency(
                          locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0)
                      .format(1599000),
                  style: textTheme(context).labelMedium,
                ),
                Text(
                  ' (1)',
                  style: textTheme(context).labelMedium,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
