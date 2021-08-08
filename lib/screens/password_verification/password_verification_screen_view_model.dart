import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/app/app.router.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';

class PasswordVerificationScreenViewModel extends BaseViewModel {
  TextEditingController _controller = TextEditingController();

  TextEditingController get controller => _controller;

  void toSavePin(){
    navigationService.navigateTo(Routes.savePin);
  }
}
