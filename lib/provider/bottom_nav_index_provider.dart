import 'package:flutter/material.dart';

class BottomNavigationIndexProvider with ChangeNotifier {
  int _index = 0;

  int get currentIndex => _index;

  void updateScreenIndex(int newIndex) {
    _index = newIndex;

    notifyListeners();
  }
}
