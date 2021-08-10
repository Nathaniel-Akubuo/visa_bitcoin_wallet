import 'package:flutter/cupertino.dart';
import 'package:visa_bitcoin_wallet/screens/home/home.dart';
import 'package:visa_bitcoin_wallet/screens/messages/messages.dart';
import 'package:visa_bitcoin_wallet/screens/profile/profile.dart';
import 'package:visa_bitcoin_wallet/screens/recent/history.dart';

class Util extends ChangeNotifier {
  int _bottomNavigationBarIndex = 0;
  var _pages = [Home(), History(), Messages(), Profile()];
  var _xOffset = 0.0;
  var _yOffset = 0.0;
  var _scale = 1.0;

  void openDrawer() {
    xOffset = 250.0;
    yOffset = 150.0;
    scale = 0.65;
    notifyListeners();
  }

  void closeDrawer() {
    xOffset = 0.0;
    yOffset = 0.0;
    scale = 1.0;
    notifyListeners();
  }

  bool isDrawerOpen() {
    return yOffset != 0 && xOffset != 0;
  }

  int get bottomNavigationBarIndex => _bottomNavigationBarIndex;

  set bottomNavigationBarIndex(int value) {
    _bottomNavigationBarIndex = value;
    notifyListeners();
  }

  get pages => _pages;

  get scale => _scale;

  set scale(value) {
    _scale = value;
  }

  get yOffset => _yOffset;

  set yOffset(value) {
    _yOffset = value;
  }

  get xOffset => _xOffset;

  set xOffset(value) {
    _xOffset = value;
  }
}
