import 'package:flutter/material.dart';

import '../../../config/constant.dart';
import '../../../config/theme.dart';

class PaymentMethodItem extends StatelessWidget {
  final String groupValue;
  final void Function(String?)? onClickButton;
  final String text;
  final String value;
  final String image;
  const PaymentMethodItem({
    Key? key,
    required this.groupValue,
    this.onClickButton,
    required this.text,
    required this.value,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppSizes.defaultMargin,
          right: AppSizes.defaultMargin,
          bottom: 12),
      child: ListTile(
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        title: Text(text),
        leading: Image.asset(
          image,
          width: 36,
          height: 36,
        ),
        trailing: Radio<String>(
          activeColor: orangeColor,
          value: value,
          groupValue: groupValue,
          onChanged: onClickButton,
        ),
      ),
    );
  }
}
