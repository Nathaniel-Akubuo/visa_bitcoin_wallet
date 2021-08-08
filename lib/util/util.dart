import 'package:flutter/cupertino.dart';
import 'package:visa_bitcoin_wallet/screens/home/home.dart';
import 'package:visa_bitcoin_wallet/screens/messages/messages.dart';
import 'package:visa_bitcoin_wallet/screens/profile/profile.dart';
import 'package:visa_bitcoin_wallet/screens/recent/history.dart';

class Util extends ChangeNotifier {
  int _bottomNavigationBarIndex = 0;
  var _pages = [Home(), History(), Messages(), Profile()];

  int get bottomNavigationBarIndex => _bottomNavigationBarIndex;

  set bottomNavigationBarIndex(int value) {
    _bottomNavigationBarIndex = value;
    notifyListeners();
  }

  get pages => _pages;
}
