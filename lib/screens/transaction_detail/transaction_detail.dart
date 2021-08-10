import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/transaction_detail/transaction_detail_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/buy_text_field.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

class TransactionDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TransactionDetailViewModel>.reactive(
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
                  Center(
                      child:
                          Text('Transaction detail', style: kConsolasSubtitle)),
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
                  Text(
                    'Transaction slip',
                    style: kMSReferenceSansSerif.copyWith(
                        color: Colors.grey, fontSize: 15),
                  ),
                  verticalSpaceMedium,
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Color(0xffFEFEFE)),
                    child: Center(
                        child: Text(
                      'Pick Image',
                      style: kMSReferenceSansSerif.copyWith(color: Colors.grey),
                    )),
                  ),
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  RoundedButton(
                    child: Text('Submit',
                        style: kMSReferenceSansSerif.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  verticalSpaceMedium
                ],
              ),
            ),
        viewModelBuilder: () => TransactionDetailViewModel());
  }
}
