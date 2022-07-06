import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../config/constant.dart';
import '../../../config/theme.dart';

class BottomCheckoutWidget extends StatelessWidget {
  const BottomCheckoutWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.defaultMargin),
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, -1),
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            width: AppSizes.phoneWidthMargin(context),
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(68),
              border: Border.all(
                color: greyBorderColor,
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/discount-icon.png',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  'Use discount coupons to save',
                  style: textTheme(context).bodySmall,
                ),
                const Spacer(),
                Icon(
                  Icons.chevron_right,
                  size: 24,
                  color: greyColor,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sub Total',
                    style: textTheme(context).bodySmall!.copyWith(fontSize: 14),
                  ),
                  Text(
                    NumberFormat.currency(
                            locale: 'id_ID', decimalDigits: 0, symbol: 'Rp ')
                        .format(10983600),
                    style: textTheme(context).labelLarge!.copyWith(
                          fontSize: 18,
                        ),
                  ),
                ],
              ),
              Container(
                width: 154,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: orangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Checkout',
                    style: textTheme(context).labelLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
