import 'package:flutter/material.dart';
import 'package:furnitour/config/theme.dart';
import 'package:furnitour/widgets/bottom_checkout_widget.dart';
import 'package:intl/intl.dart';

import '../../config/constant.dart';
import '../../widgets/header_page.dart';
import 'widget/cart_list_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      'Cart List',
                      style: textTheme(context).headlineLarge,
                    ),
                    const SizedBox(
                      width: 48,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: AppSizes.phoneHeight(context) / 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'Oops! your cart is empty',
                        style: textTheme(context).labelLarge,
                      ),
                      Text(
                        'Lets find something for you',
                        style: textTheme(context)
                            .bodySmall!
                            .copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 135,
                        height: 35,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: orangeColor.withOpacity(0.15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Exploore Product',
                            style: textTheme(context)
                                .displaySmall!
                                .copyWith(color: orangeColor),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Container(
                  //   width: AppSizes.phoneWidthMargin(context),
                  //   padding: const EdgeInsets.fromLTRB(6, 12, 12, 12),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(12),
                  //   ),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Row(
                  //         children: [
                  //           Checkbox(
                  //             value: false,
                  //             onChanged: (newValue) {},
                  //           ),
                  //           const SizedBox(
                  //             width: 6,
                  //           ),
                  //           Text(
                  //             'Select all',
                  //             style: textTheme(context).titleSmall,
                  //           )
                  //         ],
                  //       ),
                  //       const SizedBox(
                  //         height: 12,
                  //       ),
                  //       CartListItem(),
                  //       SizedBox(
                  //         height: 24,
                  //       ),
                  //       CartListItem(),
                  //       SizedBox(
                  //         height: 24,
                  //       ),
                  //       CartListItem(),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomCheckoutWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
