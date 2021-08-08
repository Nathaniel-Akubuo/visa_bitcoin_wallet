import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/new_password/new_password_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/custom_textfield.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

class NewPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewPasswordViewModel>.reactive(
        builder: (context, model, child) => GradientBodyWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.person_add, color: Colors.white, size: 105),
                  verticalSpaceMedium,
                  Text('Welcome back,', style: kConsolasTitle),
                  verticalSpaceLarge,
                  Text('Enter your new password', style: kConsolasSubtitle),
                  verticalSpaceLarge,
                  CustomTextFormfield.password(
                    labelText: 'Password',
                  ),
                  verticalSpaceSmall,
                  CustomTextFormfield.password(
                    labelText: 'Confirm Password',
                  ),
                  verticalSpaceMedium,
                  RoundedButton(
                    child: Text(
                      'Save',
                      style: kButtonTextStyle,
                    ),
                    onPressed: () => model.toHome(),
                  )
                ],
              ),
            ),
        viewModelBuilder: () => NewPasswordViewModel());
  }
}
