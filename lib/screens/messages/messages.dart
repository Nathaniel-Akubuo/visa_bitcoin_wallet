import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/screens/messages/messages_view_model.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MessagesViewModel>.reactive(
        builder: (context, model, child) => Scaffold(),
        viewModelBuilder: () => MessagesViewModel());
  }
}
