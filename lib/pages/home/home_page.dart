import 'package:flutter/material.dart';
import 'package:furnitour/config/constant.dart';
import 'package:furnitour/config/theme.dart';
import 'package:furnitour/models/category.dart';
import 'package:furnitour/models/product.dart';
import 'package:furnitour/pages/home/widgets/discount_banner.dart';
import 'package:furnitour/pages/home/widgets/new_arrival.dart';
import '../../widgets/header_page.dart';
import '../../widgets/search_category.dart';
import '../../widgets/search_box.dart';
import '../../widgets/product_card_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderPage(
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/icons/drawer-icon.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                Text(
                  'Furnitour',
                  style: textTheme(context).headlineLarge,
                ),
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
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultMargin, vertical: 12),
                child: SearchBox(),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                        left: index == 0 ? AppSizes.defaultMargin : 12,
                        right: index == 1 ? AppSizes.defaultMargin : 0),
                    child: const DiscountBanner(),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Arrivals',
                      style: textTheme(context).labelLarge,
                    ),
                    Text(
                      'See all',
                      style: textTheme(context)
                          .titleSmall!
                          .copyWith(color: orangeColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 265,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dummyChair.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                        left: index == 0 ? AppSizes.defaultMargin : 12,
                        right: index == dummyChair.length - 1
                            ? AppSizes.defaultMargin
                            : 0),
                    child: NewArrival(
                      product: dummyChair[index],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'By Categories',
                      style: textTheme(context).labelLarge,
                    ),
                    Text(
                      'See all',
                      style: textTheme(context)
                          .titleSmall!
                          .copyWith(color: orangeColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    margin: const EdgeInsets.only(left: AppSizes.defaultMargin),
                    decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'All',
                      style: textTheme(context)
                          .labelMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 72,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: SearchByCategory(
                          category: dummyCategories[index],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: dummyChair.length,
                itemBuilder: (context, index) => ProductCardByCategory(
                  product: dummyChair[index],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
