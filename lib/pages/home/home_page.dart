import 'package:flutter/material.dart';
import 'package:furnitour/config/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'test',
              style: textTheme(context).overline!.copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
