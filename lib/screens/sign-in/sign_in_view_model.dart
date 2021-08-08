import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/app/app.router.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';

class SignInViewModel extends BaseViewModel {
  final formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  TextEditingController get email => _email;

  TextEditingController get password => _password;

  void toSignUp() => navigationService.navigateTo(Routes.signUp);

  void toForgotPassword() =>
      navigationService.navigateTo(Routes.forgotPassword);

  void toHomeScreen() {
   navigationService.navigateTo(Routes.homeInitial);
  }
}
