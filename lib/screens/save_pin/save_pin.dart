import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/save_pin/save_pin_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_container.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

class SavePin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SavePinViewModel>.reactive(
        builder: (context, model, child) => GradientContainer(
              child: SafeArea(
                  child: Scaffold(
                body: Padding(
                  padding: kPadding,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_add,
                          color: Colors.white,
                          size: 105,
                        ),
                        verticalSpaceMedium,
                        Text(
                          'Almost done,',
                          textAlign: TextAlign.center,
                          style: kConsolasTitle,
                        ),
                        verticalSpaceMedium,
                        Text(
                          'Enter a transaction pin',
                          textAlign: TextAlign.center,
                          style: kConsolasSubtitle,
                        ),
                        verticalSpaceLarge,
                        PinCodeTextField(
                          controller: model.controller,
                          appContext: context,
                          cursorColor: kYellow,
                          length: 4,
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
                        verticalSpaceLarge,
                        RoundedButton(
                          onPressed: model.toSignIn,
                          child: Text(
                            'Save',
                            style: kButtonTextStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
            ),
        viewModelBuilder: () => SavePinViewModel());
  }
}
