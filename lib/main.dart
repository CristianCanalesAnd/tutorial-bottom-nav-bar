import 'package:bottom_nav_bar/animated_notch_bottom_bar/nav_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation Bar',
      home: NavPage(),
    );
  }
}
