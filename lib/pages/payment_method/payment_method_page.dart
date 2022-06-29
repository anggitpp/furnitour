import 'package:flutter/material.dart';
import 'package:furnitour/config/theme.dart';
import 'package:furnitour/pages/payment_method/widgets/payment_method_item.dart';

import '../../config/constant.dart';
import '../../widgets/header_page.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  String _groupValue = 'apple';

  void _onClickButton(String title) {
    return setState(() {
      _groupValue = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Theme(
          data: ThemeData(
            unselectedWidgetColor: orangeColor,
          ),
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
                  'Payment Method',
                  style: textTheme(context).headlineLarge,
                ),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 24,
                    color: orangeColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              PaymentMethodItem(
                groupValue: _groupValue,
                text: 'Apple Pay',
                value: 'apple',
                image: 'assets/icons/apple-icon.png',
                onClickButton: (string) => _onClickButton(string!),
              ),
              PaymentMethodItem(
                groupValue: _groupValue,
                text: 'Gopay',
                value: 'gopay',
                image: 'assets/icons/gopay-icon.png',
                onClickButton: (string) => _onClickButton(string!),
              ),
              PaymentMethodItem(
                groupValue: _groupValue,
                text: 'Dana',
                value: 'dana',
                image: 'assets/icons/dana-icon.png',
                onClickButton: (string) => _onClickButton(string!),
              ),
              PaymentMethodItem(
                groupValue: _groupValue,
                text: 'Mastercard',
                value: 'mastercard',
                image: 'assets/icons/mastercard-icon.png',
                onClickButton: (string) => _onClickButton(string!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
