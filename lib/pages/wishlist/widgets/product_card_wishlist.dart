import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../config/constant.dart';
import '../../../models/product.dart';

class ProductCardWishlist extends StatelessWidget {
  final Product product;
  const ProductCardWishlist({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.phoneWidthMargin(context),
      height: 95,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(
            product.imagePath,
            width: 70,
            height: 70,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: textTheme(context).labelMedium,
              ),
              Text(
                product.placement,
                style: textTheme(context).labelSmall,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                NumberFormat.currency(
                        locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0)
                    .format(product.price),
                style: textTheme(context).labelMedium,
              )
            ],
          ),
          const Spacer(),
          Image.asset(
            'assets/icons/${product.isWishlist ? 'love' : 'wishlist'}-icon.png',
            width: 32,
            height: 32,
          ),
        ],
      ),
    );
  }
}
