import 'package:flutter/material.dart';
import 'package:furnitour/config/constant.dart';
import 'package:furnitour/config/theme.dart';
import 'package:furnitour/pages/explore/explore_page.dart';
import 'package:furnitour/pages/home/home_page.dart';
import 'package:furnitour/pages/profile/profile_page.dart';
import 'package:furnitour/pages/wishlist/wishlist_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const ExplorePage(),
    const WishlistPage(),
    const ProfilePage()
  ];

  List<String> icons = [
    'home',
    'explore',
    'navbar-wishlist',
    'profile',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(index: selectedIndex, children: pages),
          Align(
            alignment: const Alignment(0, 0.9),
            child: Container(
              width: AppSizes.phoneWidthMargin(context),
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: blackColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: icons
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = icons.indexOf(e);
                          });
                        },
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/icons/${icons.indexOf(e) == selectedIndex ? '$e-icon-selected' : '$e-icon'}.png'),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
