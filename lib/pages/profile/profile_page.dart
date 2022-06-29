import 'package:flutter/material.dart';
import 'package:furnitour/config/route_name.dart';
import 'package:furnitour/pages/profile/widgets/profile_photo.dart';
import 'package:furnitour/widgets/header_page.dart';

import '../../config/constant.dart';
import 'widgets/profile_page_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderPage(
                Text(
                  'Your Profile',
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
                height: 20,
              ),
              const ProfilePhoto(),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Shadam Bimo',
                style: textTheme(context).labelLarge!.copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Bimo12@gmail.com',
                style: textTheme(context).bodySmall!.copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 26,
              ),
              const ProfilePageMenuItem(
                text: 'Active Order',
                image: 'assets/icons/active-order-icon.png',
              ),
              ProfilePageMenuItem(
                text: 'Payment Method',
                image: 'assets/icons/payment-method-icon.png',
                onTap: () =>
                    Navigator.pushNamed(context, RouteName.paymentMethod),
              ),
              const ProfilePageMenuItem(
                text: 'Account Settings',
                image: 'assets/icons/settings-icon.png',
              ),
              const SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: AppSizes.defaultMargin),
                  child: Text(
                    'Help Center',
                    style: textTheme(context)
                        .labelLarge!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const ProfilePageMenuItem(
                text: 'Customer Service',
                image: 'assets/icons/customer-service-icon.png',
              ),
              const ProfilePageMenuItem(
                text: 'Terms of Service',
                image: 'assets/icons/tos-icon.png',
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
