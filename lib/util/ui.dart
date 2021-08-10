import 'package:flutter/foundation.dart';

class UIUtil extends ChangeNotifier {
  var xOffset = 250.0;
  var yOffset = 150.0;
  var scale = 0.65;

  void openDrawer() {
    xOffset = 250.0;
    yOffset = 150.0;
    scale = 0.65;
    notifyListeners();
  }

  void closeDrawer() {
    xOffset = 0;
    yOffset = 0;
    scale = 1;
    notifyListeners();
  }

  bool isDrawerOpen() {
    return yOffset != 0 && xOffset != 0;
  }
}
