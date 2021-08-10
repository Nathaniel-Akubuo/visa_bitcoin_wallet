import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/buy_btc_2/buy-btc_2_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/buy_text_field.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceSmall,
                  Center(child: Text('Buy Bitcoin', style: kConsolasSubtitle)),
                  verticalSpaceMedium,
                  Text(
                    'Your wallet address',
                    style: kMSReferenceSansSerif.copyWith(
                        color: Colors.grey, fontSize: 15),
                  ),
                  verticalSpaceMedium,
                  Container(
                    height: 56,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 10, right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white)),
                    child: TextFormField(
                      style: kConsolasSubtitle,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  verticalSpaceLarge,
                  Text('Amount',
                      style: kMSReferenceSansSerif.copyWith(
                          color: Colors.grey, fontSize: 15)),
                  verticalSpaceMedium,
                  BuyTextField(suffixText: 'NGN'),
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  RoundedButton(
                    child: Text('Pay',
                        style: kMSReferenceSansSerif.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  verticalSpaceLarge
                ],
              ),
            ),
        viewModelBuilder: () => BuyBTC2ViewModel());
  }
}
