import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/screens/new_password/new_password_view_model.dart';

class NewPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewPasswordViewModel>.reactive(
        builder: (context, model, child) => Scaffold(),
        viewModelBuilder: () => NewPasswordViewModel());
  }
}
