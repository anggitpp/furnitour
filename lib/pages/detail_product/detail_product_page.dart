import 'package:flutter/material.dart';
import 'package:furnitour/config/theme.dart';
import 'package:furnitour/pages/detail_product/widget/sub_image_product.dart';
import 'package:furnitour/widgets/header_page.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

import '../../config/constant.dart';
import 'widget/detail_product_item.dart';
import 'widget/review_box_widget.dart';
import 'widget/reviews_bar.dart';
import 'widget/star_widget.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({Key? key}) : super(key: key);

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    HeaderPage(
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            size: 24,
                          ),
                        ),
                      ),
                      Text(
                        'Detail Product',
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
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: AppSizes.phoneWidthMargin(context),
                      padding: const EdgeInsets.all(12),
                      height: 354,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.topCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: AppSizes.phoneWidthMargin(context),
                            height: 184,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/sofa/hemlingby-chair.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Landskrona Sofa',
                                    style: textTheme(context)
                                        .labelLarge!
                                        .copyWith(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    NumberFormat.currency(
                                            locale: 'id_ID',
                                            symbol: 'Rp ',
                                            decimalDigits: 0)
                                        .format(3495000),
                                    style: textTheme(context)
                                        .labelLarge!
                                        .copyWith(
                                            fontSize: 18, color: orangeColor),
                                  ),
                                ],
                              ),
                              Image.asset(
                                'assets/icons/love-icon.png',
                                width: 48,
                                height: 48,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              5,
                              (index) {
                                return GestureDetector(
                                  onTap: (() {
                                    setState(() {
                                      selectedImage = index;
                                    });
                                  }),
                                  child: Container(
                                    width: 54,
                                    height: 54,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: selectedImage == index
                                            ? orangeColor
                                            : Colors.transparent,
                                        width: 2,
                                      ),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/sofa/hemlingby-chair.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: AppSizes.phoneWidthMargin(context),
                      padding: EdgeInsets.all(AppSizes.defaultMargin),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          TabBar(
                            indicator: BoxDecoration(
                              color: orangeColor.withOpacity(0.10),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            unselectedLabelColor: blackColor,
                            labelColor: orangeColor,
                            labelStyle: textTheme(context).titleSmall!.copyWith(
                                fontSize: 13,
                                color: orangeColor,
                                fontWeight: FontWeight.w500),
                            unselectedLabelStyle: textTheme(context)
                                .titleSmall!
                                .copyWith(
                                    fontSize: 13,
                                    color: blackColor,
                                    fontWeight: FontWeight.w500),
                            tabs: [
                              Tab(
                                text: "Details Product",
                              ),
                              Tab(
                                text: "Review Product",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          //TODO :: MAKE THIS TABBAR EXPANDABLE
                          SizedBox(
                            height: 500,
                            width: AppSizes.phoneWidthMargin(context),
                            child: TabBarView(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Description',
                                      style: textTheme(context).labelMedium,
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        style: textTheme(context).bodySmall,
                                        children: [
                                          TextSpan(
                                              text:
                                                  'Luxury is our guide. We use an elastic foam filling for comfort, thick grain leather in the contact area because it looks. '),
                                          TextSpan(
                                            text: 'Read More',
                                            style: textTheme(context)
                                                .titleSmall!
                                                .copyWith(
                                                    color: orangeColor,
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Text(
                                      'Measurements',
                                      style: textTheme(context).labelMedium,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    DetailProductItem(
                                        title: 'Wide', value: '204 cm'),
                                    DetailProductItem(
                                        title: 'Depth', value: '89 cm'),
                                    DetailProductItem(
                                        title: 'Tall', value: '78 cm'),
                                    DetailProductItem(
                                        title: 'Armrest Height',
                                        value: '64 cm'),
                                    DetailProductItem(
                                        title: 'Seat Width', value: '180 cm'),
                                    DetailProductItem(
                                        title: 'Seath Depth', value: '61 cm'),
                                    DetailProductItem(
                                        title: 'Seat Height', value: '44 cm'),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Text(
                                      'Familiar Product',
                                      style: textTheme(context).labelMedium,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      height: 60,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 7,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            width: 54,
                                            height: 54,
                                            margin: EdgeInsets.only(right: 9),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/sofa/hemlingby-chair.png',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Ratings & Reviews',
                                          style: textTheme(context).labelMedium,
                                        ),
                                        Text(
                                          'See all',
                                          style: textTheme(context)
                                              .bodySmall!
                                              .copyWith(color: orangeColor),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              '4.9',
                                              style: textTheme(context)
                                                  .labelLarge!
                                                  .copyWith(
                                                      fontSize: 48,
                                                      color: orangeColor),
                                            ),
                                            Text(
                                              'Out of 5',
                                              style: textTheme(context)
                                                  .labelMedium!
                                                  .copyWith(color: orangeColor),
                                            )
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              children: [
                                                StarWidget(5),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                ReviewsBar(30),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                StarWidget(4),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                ReviewsBar(20),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                StarWidget(3),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                ReviewsBar(80),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                StarWidget(2),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                ReviewsBar(50),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                StarWidget(1),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                ReviewsBar(12),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    ReviewBoxWidget(),
                                    ReviewBoxWidget(),
                                    //TODO :: MAKE REVIEW WIDGET EXPANDABLE
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(AppSizes.defaultMargin),
                  width: AppSizes.phoneWidth(context),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 154,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: orangeColor,
                            width: 1,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Buy Now',
                          style: textTheme(context).labelMedium!.copyWith(
                              color: orangeColor, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        width: 154,
                        height: 48,
                        decoration: BoxDecoration(
                          color: orangeColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '+ Add to Cart',
                          style: textTheme(context).labelMedium!.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
