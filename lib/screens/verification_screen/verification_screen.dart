import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/screens/verification_screen/verification_screen_view_model.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerificationScreenViewModel>.reactive(
        builder: (context, model, child) => Scaffold(),
        viewModelBuilder: () => VerificationScreenViewModel());
  }
}
