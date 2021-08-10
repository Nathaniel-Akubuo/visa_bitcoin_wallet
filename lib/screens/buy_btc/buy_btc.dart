import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/buy_btc/buy_btc_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/buy_text_field.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

class BuyBTC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BuyBTCViewModel>.reactive(
        builder: (context, model, child) => GradientBodyWidget(
              appBar: AppBar(
                backgroundColor: kDarkerBlue,
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
                    'You pay',
                    style: kMSReferenceSansSerif.copyWith(
                        color: Colors.grey, fontSize: 15),
                  ),
                  verticalSpaceMedium,
                  Form(
                      key: model.formKey,
                      child: BuyTextField(
                        suffixText: 'NGN',
                        validator: (value){
                          if(value.isEmpty){
                            return 'Enter an amount';
                          }
                        },
                      )),
                  verticalSpaceLarge,
                  Text('You get',
                      style: kMSReferenceSansSerif.copyWith(
                          color: Colors.grey, fontSize: 15)),
                  verticalSpaceMedium,
                  BuyTextField(isFocusable: false, suffixText: 'BTC'),
                  verticalSpaceMedium,
                  BuyTextField(isFocusable: false, suffixText: 'USD'),
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  RoundedButton(
                    onPressed: ()=>model.next(),
                    child: Text('Continue',
                        style: kMSReferenceSansSerif.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
        viewModelBuilder: () => BuyBTCViewModel());
  }
}
