import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/sign-in/sign_in_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/body_widget.dart';
import 'package:visa_bitcoin_wallet/widgets/custom_textfield.dart';
import 'package:visa_bitcoin_wallet/widgets/rounded_button.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignInViewModel>.reactive(
        builder: (context, model, child) => BodyWidget(
              child: Column(
                children: [
                  Icon(Icons.person_add, color: Colors.white, size: 105),
                  verticalSpaceMedium,
                  Text('Welcome back,', style: kConsolasTitle),
                  verticalSpaceLarge,
                  Text('Log in to your account', style: kConsolasSubtitle),
                  verticalSpaceLarge,
                  Form(
                    key: model.formKey,
                    child: Column(
                      children: [
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
                      ],
                    ),
                  ),
                  verticalSpaceSmall,
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: model.toForgotPassword,
                      child: Text(
                        'Forgot password?',
                        style: kSegoe.copyWith(color: kYellow),
                      ),
                    ),
                  ),
                  verticalSpaceLarge,
                  RoundedButton(
                    child: Text(
                      'Sign In',
                      style: kSegoe.copyWith(
                          fontWeight: FontWeight.bold, color: kYellow),
                    ),
                  ),
                  verticalSpaceMedium,
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Don't have an account? ",
                          style: kSegoe,
                          children: [
                            TextSpan(
                                text: 'Sign Up',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = model.toSignUp,
                                style: kSegoe.copyWith(
                                    color: kYellow,
                                    fontWeight: FontWeight.bold))
                          ]),
                    ),
                  ),
                ],
              ),
            ),
        viewModelBuilder: () => SignInViewModel());
  }
}
