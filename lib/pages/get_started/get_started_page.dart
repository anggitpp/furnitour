import 'package:flutter/material.dart';
import 'package:furnitour/config/constant.dart';
import 'package:furnitour/config/theme.dart';

import '../../widgets/default_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/get_started.png'),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Modern',
                      style:
                          textTheme(context).labelLarge!.copyWith(fontSize: 32),
                    ),
                    TextSpan(
                      text: ' Furniture',
                      style: textTheme(context)
                          .labelLarge!
                          .copyWith(fontSize: 32, color: orangeColor),
                    ),
                    TextSpan(
                      text: '\nOnly For You',
                      style:
                          textTheme(context).labelLarge!.copyWith(fontSize: 32),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Get your best price Furniture with\nonly one click',
                textAlign: TextAlign.center,
                style: textTheme(context).bodySmall!.copyWith(fontSize: 14),
              ),
              SizedBox(
                height: 50,
              ),
              const DefaultButton(
                width: 250,
                height: 48,
                text: 'Get Started',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
