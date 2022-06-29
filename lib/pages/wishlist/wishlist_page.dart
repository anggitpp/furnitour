import 'package:flutter/material.dart';
import 'package:furnitour/models/product.dart';
import 'package:furnitour/pages/wishlist/widgets/product_card_wishlist.dart';
import 'package:furnitour/widgets/header_page.dart';

import '../../config/constant.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderPage(
                Text(
                  'Wishlist Items',
                  style: textTheme(context).headlineLarge,
                ),
                const SizedBox(),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/icons/cart-icon.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultMargin),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dummyChair.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: ProductCardWishlist(
                        product: dummyChair[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
