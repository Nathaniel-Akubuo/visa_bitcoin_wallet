import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/verification_screen/verification_screen_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/body_widget.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerificationScreenViewModel>.reactive(
        builder: (context, model, child) => BodyWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.person_add, color: Colors.white, size: 105),
                  verticalSpaceMedium,
                  Text(
                    'Got a mail, right?',
                    textAlign: TextAlign.center,
                    style: kConsolas.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  verticalSpaceMedium,
                  Text(
                    'Enter your verification code',
                    textAlign: TextAlign.center,
                    style: kConsolas.copyWith(fontWeight: FontWeight.bold),
                  ),
                  verticalSpaceLarge,
                  PinCodeTextField(
                    controller: model.controller,
                    appContext: context,
                    cursorColor: kYellow,
                    length: 5,
                    keyboardType: TextInputType.number,
                    textStyle: kSegoe.copyWith(
                        color: kYellow, fontWeight: FontWeight.bold),
                    pinTheme: PinTheme(
                        inactiveColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        activeColor: Colors.white,
                        selectedFillColor: Colors.white,
                        selectedColor: Colors.white,
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 50,
                        activeFillColor: kDarkerBlue),
                    enableActiveFill: true,
                    onChanged: (String value) {},
                  ),
                  verticalSpaceRegular,
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: null,
                      child: Text(
                        'Did not receive mail?',
                        style: kSegoe.copyWith(color: kYellow),
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                  RoundedButton(
                    onPressed: model.toSavePin,
                    child: Text(
                      'Validate',
                      style: kSegoe.copyWith(
                          fontWeight: FontWeight.bold, color: kYellow),
                    ),
                  )
                ],
              ),
            ),
        viewModelBuilder: () => VerificationScreenViewModel());
  }
}
