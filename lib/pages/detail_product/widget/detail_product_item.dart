import 'package:flutter/material.dart';

import '../../../config/constant.dart';
import '../../../config/theme.dart';

class DetailProductItem extends StatelessWidget {
  final String title;
  final String value;
  const DetailProductItem({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthBox = AppSizes.phoneWidthMargin(context) - 2 * 24;
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          SizedBox(
            width: widthBox / 3 + 20,
            child: Text(
              title,
              style: textTheme(context).bodySmall,
            ),
          ),
          SizedBox(
            width: 20,
            child: Text(
              ':',
              style: textTheme(context)
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            width: widthBox * 2 / 3 - 40,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                value,
                style: textTheme(context)
                    .bodySmall!
                    .copyWith(fontWeight: FontWeight.w600, color: blackColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
