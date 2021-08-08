import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/sign-up/sign_up_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';
import 'package:visa_bitcoin_wallet/widgets/custom_textfield.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
      builder: (context, model, child) => GradientBodyWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.person_add, color: Colors.white, size: 105),
            verticalSpaceMedium,
            Text(
              'Join our community',
              style: kConsolas.copyWith(fontWeight: FontWeight.bold),
            ),
            verticalSpaceLarge,
            Form(
              key: model.formKey,
              child: Column(
                children: [
                  CustomTextFormfield.regular(
                    labelText: 'Name',
                    hintText: 'John Doe',
                    textInputAction: TextInputAction.next,
                    controller: model.name,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your name';
                      }
                    },
                  ),
                  verticalSpaceSmall,
                  CustomTextFormfield.regular(
                    labelText: 'E-mail',
                    hintText: 'example@example.com',
                    textInputType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    controller: model.email,
                    validator: (value) {
                      if (!emailRegExp.hasMatch(value) ||
                          !value.contains('.')) {
                        return 'Invalid e-mail address';
                      }
                    },
                  ),
                  verticalSpaceSmall,
                  CustomTextFormfield.regular(
                    labelText: 'Phone Number',
                    hintText: 'XXXX-XXX-XXXX',
                    textInputType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    controller: model.phoneNumber,
                    validator: (value) {
                      if (value.isEmpty || value.length < 11) {
                        return 'Enter a valid phone number';
                      }
                    },
                  ),
                  verticalSpaceSmall,
                  CustomTextFormfield.password(
                    labelText: 'Password',
                    textInputAction: TextInputAction.next,
                    hintText: '********',
                    controller: model.password,
                    validator: (value) {
                      if (value.length < 8) {
                        return 'Password must contain at least 8 characters';
                      }
                    },
                  ),
                  verticalSpaceSmall,
                  CustomTextFormfield.password(
                    labelText: 'Confirm Password',
                    controller: model.confirmPassword,
                    textInputAction: TextInputAction.done,
                    hintText: '********',
                    validator: (value) {
                      if (value != model.password.text) {
                        return 'Passwords do not match';
                      }
                    },
                  ),
                ],
              ),
            ),
            verticalSpaceLarge,
            Row(
              children: [
                Checkbox(
                  value: model.isChecked,
                  activeColor: kDarkestBlue,
                  focusColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  onChanged: (value) => model.toggleCheck(),
                ),
                Expanded(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'I have read and agreed to the ',
                      style: kSegoe,
                      children: [
                        TextSpan(
                          text: 'Terms of Service',
                          style: kSegoe.copyWith(
                              fontWeight: FontWeight.bold, color: kYellow),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            verticalSpaceMedium,
            RoundedButton(
              onPressed: () => model.verify(),
              child: Text(
                'Sign Up',
                style: kSegoe.copyWith(
                    fontWeight: FontWeight.bold, color: kYellow),
              ),
            ),
            verticalSpaceMedium,
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Already a user? ',
                    style: kSegoe,
                    children: [
                      TextSpan(
                          text: 'Sign In',
                          recognizer: TapGestureRecognizer()
                            ..onTap = model.toSignIn,
                          style: kSegoe.copyWith(
                              color: kYellow, fontWeight: FontWeight.bold))
                    ]),
              ),
            ),
            verticalSpaceLarge
          ],
        ),
      ),
      viewModelBuilder: () => SignUpViewModel(),
    );
  }
}
