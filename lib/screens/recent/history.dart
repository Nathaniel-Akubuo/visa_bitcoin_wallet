import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/screens/recent/history_view_model.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HistoryViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              backgroundColor: Colors.white,
            ),
        viewModelBuilder: () => HistoryViewModel());
  }
}
