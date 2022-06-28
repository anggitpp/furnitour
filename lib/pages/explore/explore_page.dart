import 'package:flutter/material.dart';
import 'package:furnitour/models/product.dart';
import 'package:furnitour/widgets/header_page.dart';
import 'package:furnitour/widgets/product_card_category.dart';
import 'package:furnitour/widgets/search_box.dart';

import '../../config/constant.dart';
import '../../config/theme.dart';
import '../../models/category.dart';
import '../../widgets/search_category.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var categories = [
      Container(
        width: 72,
        height: 72,
        decoration: BoxDecoration(
          color: orangeColor,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: Text(
          'All',
          style: textTheme(context).labelMedium!.copyWith(color: Colors.white),
        ),
      ),
      ...dummyCategories.map(
        (e) => SearchByCategory(
          category: e,
        ),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderPage(
                Text(
                  'Furnitour',
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
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchBox(),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'By Categories "ALL"',
                      style: textTheme(context).labelLarge,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Wrap(
                      runSpacing: 12,
                      spacing: 13,
                      children: categories,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: dummyChair.length,
                itemBuilder: (context, index) => ProductCardByCategory(
                  product: dummyChair[index],
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
