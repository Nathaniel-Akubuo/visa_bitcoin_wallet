import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/screens/buy_btc_2/buy-btc_2_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';

class BuyBTC2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BuyBTC2ViewModel>.reactive(
        builder: (context, model, child) => GradientBodyWidget(
              appBar: AppBar(
                backgroundColor: kAppBarColor,
                leading: IconButton(
                    icon: Icon(Icons.arrow_back_ios), onPressed: model.close),
              ),
            ),
        viewModelBuilder: () => BuyBTC2ViewModel());
  }
}
