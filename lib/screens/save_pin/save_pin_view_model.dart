import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/app/app.router.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';

class SavePinViewModel extends BaseViewModel {
  TextEditingController _controller = TextEditingController();

  TextEditingController get controller => _controller;

  void toSignIn() {
    navigationService.navigateTo(Routes.signIn);
  }
}
