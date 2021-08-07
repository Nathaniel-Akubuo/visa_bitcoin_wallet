import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/verification_screen/verification_screen_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VerificationScreenViewModel>.reactive(
        builder: (context, model, child) => Container(
              decoration: BoxDecoration(gradient: gradient),
              child: Scaffold(
                body: Padding(
                  padding: padding,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_add,
                          color: Colors.white,
                          size: 105,
                        ),
                        verticalSpaceMedium,
                        Text(
                          'Got a mail, right?',
                          textAlign: TextAlign.center,
                          style: consolas.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        verticalSpaceMedium,
                        Text(
                          'Enter your verification code',
                          textAlign: TextAlign.center,
                          style: consolas.copyWith(fontWeight: FontWeight.bold),
                        ),
                        verticalSpaceLarge,
                        PinCodeTextField(
                          appContext: context,
                          cursorColor: Colors.transparent,
                          length: 5,
                          onChanged: null,
                          pinTheme: PinTheme(
                            inactiveColor: Colors.white,
                            inactiveFillColor: Colors.white,
                            activeColor: Colors.white,
                            selectedFillColor: Colors.white,
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: 60,
                            fieldWidth: 50,
                            activeFillColor: Colors.white,
                          ),
                          enableActiveFill: true,
                        ),
                        verticalSpaceLarge,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Did not receive mail?',
                              style: segoe.copyWith(
                                  fontWeight: FontWeight.bold, color: yellow),
                            )
                          ],
                        ),
                        verticalSpaceMedium,
                        RoundedButton(
                          child: Text(
                            'Validate',
                            style: segoe.copyWith(
                                fontWeight: FontWeight.bold, color: yellow),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => VerificationScreenViewModel());
  }
}
