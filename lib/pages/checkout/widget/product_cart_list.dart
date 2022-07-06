import 'package:flutter/material.dart';

import '../../../config/constant.dart';
import 'product_cart_list_item.dart';

class ProductCartList extends StatelessWidget {
  const ProductCartList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: AppSizes.phoneWidth(context),
      padding: const EdgeInsets.all(AppSizes.defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product Cart List',
            style: textTheme(context).labelMedium,
          ),
          const SizedBox(
            height: 12,
          ),
          const ProductCartListItem(),
          const SizedBox(
            height: 24,
          ),
          const ProductCartListItem(),
        ],
      ),
    );
  }
}
