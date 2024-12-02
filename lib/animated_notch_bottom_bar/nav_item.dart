import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

enum NavItem {
  home,
  account,
  favorite,
  settings;

  IconData get iconData {
    switch (this) {
      case home:
        return Icons.home_filled;
      case account:
        return Icons.person;
      case favorite:
        return Icons.favorite;
      case settings:
        return Icons.settings;
    }
  }

  Color get color {
    switch (this) {
      case home:
        return Colors.green;
      case account:
        return Colors.blueAccent;
      case favorite:
        return Colors.pink;
      case settings:
        return Colors.yellow;
    }
  }

  String get title {
    switch (this) {
      case home:
        return 'Home';
      case account:
        return 'Account';
      case favorite:
        return 'Favorite';
      case settings:
        return 'Settings';
    }
  }

  BottomBarItem get option {
    return BottomBarItem(
      inActiveItem: Icon(
        iconData,
        color: Colors.blueGrey,
      ),
      activeItem: Icon(
        iconData,
        color: color,
      ),
      itemLabel: title,
    );
  }
}
