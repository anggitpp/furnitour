import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../config/constant.dart';
import '../config/theme.dart';
import '../models/product.dart';

class ProductCardByCategory extends StatelessWidget {
  final Product product;
  const ProductCardByCategory({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.phoneWidthMargin(context),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.fromLTRB(
          AppSizes.defaultMargin, 0, AppSizes.defaultMargin, 12),
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 120,
                height: 136,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(product.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                child: Image.asset(
                  'assets/icons/${product.isWishlist ? 'love-icon.png' : 'wishlist-icon.png'}',
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          SizedBox(
            width: AppSizes.phoneWidthMargin(context) / 2 + 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.placement,
                  style: textTheme(context).labelSmall,
                ),
                Text(
                  product.name,
                  style: textTheme(context).labelMedium,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  product.material,
                  style: textTheme(context).labelSmall,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      NumberFormat.currency(
                              locale: 'id_ID', decimalDigits: 0, symbol: 'Rp ')
                          .format(product.price),
                      style: textTheme(context).labelMedium,
                    ),
                    Container(
                      width: 73,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: orangeColor,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Buy Now',
                        style: textTheme(context).displaySmall,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
