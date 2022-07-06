import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

import '../../../config/constant.dart';
import '../../../config/theme.dart';

class CheckoutPaymentMethodWidget extends StatelessWidget {
  const CheckoutPaymentMethodWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.phoneWidth(context),
      color: Colors.white,
      padding: const EdgeInsets.all(AppSizes.defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Method',
            style: textTheme(context).labelMedium,
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: AppSizes.phoneWidthMargin(context),
            padding: const EdgeInsets.all(12),
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: lightGreyColor),
            child: Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: '#00AED6'.toColor().withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Image.asset(
                    'assets/icons/gopay-icon.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gopay',
                      style: textTheme(context).bodySmall!.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Text(
                      '085155410987',
                      style: textTheme(context)
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.chevron_right,
                  size: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
