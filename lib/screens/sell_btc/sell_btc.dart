import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/sell_btc/sell_btc_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/buy_text_field.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

class SellBTC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SellBTCViewModel>.reactive(
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
                  Center(child: Text('Sell Bitcoin', style: kConsolasSubtitle)),
                  verticalSpaceMedium,
                  Container(
                    padding: kPadding,
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: kCircularBorderRadius,
                        border: Border.all(color: Colors.white)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('OUR BTC WALLET', style: kMSReferenceSansSerif),
                        Expanded(
                          child: Text('hex-tred-kdkjkfjdkfkjdkfd',
                              style:
                                  kSegoe.copyWith(fontWeight: FontWeight.bold)),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text('Copy',
                              style:
                                  kMSReferenceSansSerif.copyWith(fontSize: 15)),
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceMedium,
                  Text(
                    'You send',
                    style: kMSReferenceSansSerif.copyWith(
                        color: Colors.grey, fontSize: 15),
                  ),
                  verticalSpaceMedium,
                  BuyTextField(
                    suffixText: 'BTC',
                  ),
                  verticalSpaceMedium,
                  BuyTextField(
                    suffixText: 'NGN',
                  ),
                  verticalSpaceLarge,
                  Text('You get',
                      style: kMSReferenceSansSerif.copyWith(
                          color: Colors.grey, fontSize: 15)),
                  verticalSpaceMedium,
                  BuyTextField(suffixText: 'NGN', isFocusable: false),
                  verticalSpaceLarge,
                  RoundedButton(
                    onPressed: () => model.next(),
                    child: Text('Continue',
                        style: kMSReferenceSansSerif.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
        viewModelBuilder: () => SellBTCViewModel());
  }
}
