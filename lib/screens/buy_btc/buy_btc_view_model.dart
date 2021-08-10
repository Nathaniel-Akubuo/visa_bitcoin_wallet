import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';

class BuyBTCViewModel extends BaseViewModel {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();

  void close() => navigationService.back();

  void next(){
    if(_formKey.currentState.validate()){
//      navigationService.navigateTo(Routes)
    }
  }

  TextEditingController get controller => _controller;

  get formKey => _formKey;
}
