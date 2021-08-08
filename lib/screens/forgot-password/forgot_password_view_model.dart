import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/app/app.router.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  TextEditingController _email = TextEditingController();
  final formKey = GlobalKey<FormState>();

  TextEditingController get controller => _email;

  void toPasswordVerificationScreen() {
    if (formKey.currentState.validate()) {
      navigationService.navigateTo(Routes.passwordVerificationScreen);
    }
  }
}
