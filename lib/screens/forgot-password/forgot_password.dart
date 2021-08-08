import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/forgot-password/forgot_password_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';
import 'package:visa_bitcoin_wallet/widgets/custom_textfield.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForgotPasswordViewModel>.reactive(
      builder: (context, model, child) => GradientBodyWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.person_add, color: Colors.white, size: 105),
            verticalSpaceMedium,
            Text('Forgot your password?',
                style: kConsolasTitle, textAlign: TextAlign.center),
            verticalSpaceMedium,
            Text("Let's reset it", style: kConsolasSubtitle),
            verticalSpaceMedium,
            Form(
              key: model.formKey,
              child: CustomTextFormfield.regular(
                labelText: 'E-mail',
                textInputType: TextInputType.emailAddress,
                controller: model.controller,
                validator: (value) {
                  if (!emailRegExp.hasMatch(value)) {
                    return 'Invalid e-mail address';
                  }
                },
              ),
            ),
            verticalSpaceLarge,
            RoundedButton(
              onPressed: model.toPasswordVerificationScreen,
              child: Text('Send Verification Code', style: kButtonTextStyle),
            )
          ],
        ),
      ),
      viewModelBuilder: () => ForgotPasswordViewModel(),
    );
  }
}
