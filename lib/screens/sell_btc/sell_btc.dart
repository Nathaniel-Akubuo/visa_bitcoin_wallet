import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/screens/sell_btc/sell_btc_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';

class SellBTC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SellBTCViewModel>.reactive(
        builder: (context, model, child) => GradientBodyWidget(),
        viewModelBuilder: () => SellBTCViewModel());
  }
}
