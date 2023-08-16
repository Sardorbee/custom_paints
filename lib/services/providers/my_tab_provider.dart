import 'package:custom_paints/ui/clock_screen/clock.dart';
import 'package:custom_paints/ui/flag_screen/flag.dart';
import 'package:custom_paints/ui/snowman_screen/snowman.dart';
import 'package:flutter/material.dart';

class MyTabProvider with ChangeNotifier {
  int currentIndex = 0;

  List<Widget> stackItems = [
    const FlagScreen(),
    const SnowmanScreen(),
     EmojiPage(),
  ];
  updateIndex(index) {
    currentIndex = index;
    notifyListeners();
  }
}
