import 'package:flutter/material.dart';
import 'package:furnitour/config/theme.dart';
import 'package:furnitour/widgets/header_page.dart';
import 'package:intl/intl.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../config/constant.dart';
import 'widget/bottom_checkout_widget.dart';
import 'widget/checkout_payment_method_widget.dart';
import 'widget/product_cart_list.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

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
                      'Product Checkout',
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
                    height: 24,
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(AppSizes.defaultMargin),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Shipping Address',
                              style: textTheme(context).labelMedium,
                            ),
                            const Spacer(),
                            Text(
                              'Edit',
                              style: textTheme(context).bodySmall!.copyWith(
                                    color: orangeColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: AppSizes.phoneWidthMargin(context),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: greyBorderColor,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SimpleShadow(
                                    opacity: 0.1, // Default: 0.5
                                    color: Colors.black, // Default: Black
                                    offset: const Offset(
                                        1, 1), // Default: Offset(2, 2)
                                    sigma: 2,
                                    child: Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/icons/store-icon.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Appkun Shop',
                                        style: textTheme(context)
                                            .titleSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Bekasi, Jalan Bintara VII. Bekasi Barat, Indonesia',
                                        style: textTheme(context)
                                            .bodySmall!
                                            .copyWith(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Image.asset(
                                  'assets/icons/line-icon.png',
                                  height: 25,
                                ),
                              ),
                              Row(
                                children: [
                                  SimpleShadow(
                                    opacity: 0.1, // Default: 0.5
                                    color: Colors.black, // Default: Black
                                    offset: const Offset(
                                        1, 1), // Default: Offset(2, 2)
                                    sigma: 2,
                                    child: Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/icons/marker-icon.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Your House',
                                        style: textTheme(context)
                                            .titleSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Bekasi, Jalan Bintara VII. Bekasi Barat, Indonesia',
                                        style: textTheme(context)
                                            .bodySmall!
                                            .copyWith(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const ProductCartList(),
                  const SizedBox(
                    height: 12,
                  ),
                  const CheckoutPaymentMethodWidget(),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: AppSizes.phoneWidth(context),
                    color: Colors.white,
                    padding: const EdgeInsets.all(AppSizes.defaultMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shopping Summary',
                          style: textTheme(context).labelMedium,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Product Total (7 items)',
                              style: textTheme(context)
                                  .bodySmall!
                                  .copyWith(fontSize: 14),
                            ),
                            Text(
                              NumberFormat.currency(
                                locale: 'id_ID',
                                symbol: 'Rp ',
                                decimalDigits: 0,
                              ).format(10823600),
                              style: textTheme(context).labelMedium,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shipping Fee',
                              style: textTheme(context)
                                  .bodySmall!
                                  .copyWith(fontSize: 14),
                            ),
                            Text(
                              NumberFormat.currency(
                                locale: 'id_ID',
                                symbol: 'Rp ',
                                decimalDigits: 0,
                              ).format(160000),
                              style: textTheme(context).labelMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 170,
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
