import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

enum NavItem {
  home,
  likes,
  search,
  profile;

  Icon get icon {
    switch (this) {
      case home:
        return const Icon(Icons.home);
      case likes:
        return const Icon(Icons.favorite_border);
      case search:
        return const Icon(Icons.search);
      case profile:
        return const Icon(Icons.person);
    }
  }

  String get title {
    switch (this) {
      case home:
        return "Home";
      case likes:
        return "Likes";
      case search:
        return "Search";
      case profile:
        return "Profile";
    }
  }

  Color get selectedColor {
    switch (this) {
      case home:
        return Colors.purple;
      case likes:
        return Colors.pink;
      case search:
        return Colors.orange;
      case profile:
        return Colors.teal;
    }
  }

  SalomonBottomBarItem get buildIcon {
    return SalomonBottomBarItem(
      icon: icon,
      title: Text(title),
      selectedColor: selectedColor,
    );
  }
}
