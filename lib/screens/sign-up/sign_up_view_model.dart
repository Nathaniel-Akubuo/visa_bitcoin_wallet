import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpViewModel extends BaseViewModel {
  final formKey = GlobalKey<FormState>();
  bool _isChecked = false;

  void toggleCheck() {
    _isChecked = !_isChecked;
    notifyListeners();
  }

  bool get isChecked => _isChecked;
}
