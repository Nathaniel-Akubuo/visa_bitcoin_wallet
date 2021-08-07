import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/app/app.router.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';

class SignUpViewModel extends BaseViewModel {
  final formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  bool _isChecked = false;

  void toggleCheck() {
    _isChecked = !_isChecked;
    notifyListeners();
  }

  bool get isChecked => _isChecked;

  TextEditingController get name => _name;

  verify() {
    if (formKey.currentState.validate()) {
      navigationService.navigateTo(Routes.verificationScreen);
    }
  }

  TextEditingController get email => _email;

  TextEditingController get phoneNumber => _phoneNumber;

  TextEditingController get password => _password;

  TextEditingController get confirmPassword => _confirmPassword;
}
