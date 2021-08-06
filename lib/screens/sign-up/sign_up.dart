import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/sign-up/sign_up_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/custom_textfield.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
      builder: (context, model, child) => Container(
        decoration: BoxDecoration(gradient: gradient),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_add,
                    color: Colors.white,
                    size: 105,
                  ),
                  verticalSpaceLarge,
                  Text(
                    'Join our community',
                    style: consolas,
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
                        ),
                        verticalSpaceSmall,
                        CustomTextFormfield.regular(
                          labelText: 'E-mail',
                          hintText: 'example@example.com',
                          textInputType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                        verticalSpaceSmall,
                        CustomTextFormfield.regular(
                          labelText: 'Phone Number',
                          hintText: 'XXXX-XXX-XXXX',
                          textInputType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                        ),
                        verticalSpaceSmall,
                        CustomTextFormfield.password(
                          labelText: 'Password',
                          textInputAction: TextInputAction.next,
                          hintText: '********',
                        ),
                        verticalSpaceSmall,
                        CustomTextFormfield.password(
                          labelText: 'Confirm Password',
                          textInputAction: TextInputAction.next,
                          hintText: '********',
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceLarge,
                  Row(
                    children: [
                      Checkbox(
                          value: model.isChecked,
                          activeColor: darkestBlue,
                          focusColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          onChanged: (value) => model.toggleCheck()),
                      Expanded(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'I have read and agreed to the ',
                            style: segoe,
                            children: [
                              TextSpan(
                                text: 'Terms of Service',
                                style: segoe.copyWith(
                                    fontWeight: FontWeight.bold, color: yellow),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  RoundedButton(
                    child: Text(
                      'Sign Up',
                      style: segoe.copyWith(
                          fontWeight: FontWeight.bold, color: yellow),
                    ),
                  ),
                  verticalSpaceMedium,
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Already a user? ',
                          style: segoe,
                          children: [
                            TextSpan(
                                text: 'Sign In',
                                recognizer: TapGestureRecognizer(),
                                style: segoe.copyWith(
                                    color: yellow, fontWeight: FontWeight.bold))
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => SignUpViewModel(),
    );
  }
}
