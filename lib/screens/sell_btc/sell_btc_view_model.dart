import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/app/app.router.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';

class SellBTCViewModel extends BaseViewModel {
  final _formKey = GlobalKey<FormState>();

  void close() => navigationService.back();

  void next() {
    navigationService.navigateTo(Routes.transactionDetail);
  }

  get formKey => _formKey;
}
