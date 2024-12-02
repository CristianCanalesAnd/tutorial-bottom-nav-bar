import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import 'nav_item.dart';
import 'pages.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  final _pageController = PageController(initialPage: 0);
  final _notchBottomBarController = NotchBottomBarController(index: 0);

  @override
  void dispose() {
    _pageController.dispose();
    _notchBottomBarController.dispose();
    super.dispose();
  }

  final bottomBarPages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animated Notch Bottom Bar',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _notchBottomBarController.jumpTo,
        children: bottomBarPages.map((page) => page).toList(),
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _notchBottomBarController,
        onTap: _pageController.jumpToPage,
        bottomBarItems:
            NavItem.values.map((navItem) => navItem.option).toList(),
        kIconSize: 24.0,
        kBottomRadius: 28.0,
        color: Colors.white, //Color of the bottom bar
        notchColor: AppColors.notchColor,
        showShadow: false,
        durationInMilliSeconds: 200,
        showLabel: false,
      ),
    );
  }
}
