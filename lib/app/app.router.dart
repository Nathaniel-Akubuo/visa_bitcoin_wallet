// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../screens/forgot-password/forgot_password.dart';
import '../screens/home/home.dart';
import '../screens/new_password/new_password.dart';
import '../screens/password_verification/password_verification_screen.dart';
import '../screens/save_pin/save_pin.dart';
import '../screens/sign-in/sign_in.dart';
import '../screens/sign-up/sign_up.dart';
import '../screens/verification_screen/verification_screen.dart';

class Routes {
  static const String signUp = '/sign-up';
  static const String signIn = '/sign-in';
  static const String verificationScreen = '/verification-screen';
  static const String savePin = '/save-pin';
  static const String forgotPassword = '/forgot-password';
  static const String passwordVerificationScreen =
      '/password-verification-screen';
  static const String newPassword = '/new-password';
  static const String home = '/Home';
  static const all = <String>{
    signUp,
    signIn,
    verificationScreen,
    savePin,
    forgotPassword,
    passwordVerificationScreen,
    newPassword,
    home,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.signUp, page: SignUp),
    RouteDef(Routes.signIn, page: SignIn),
    RouteDef(Routes.verificationScreen, page: VerificationScreen),
    RouteDef(Routes.savePin, page: SavePin),
    RouteDef(Routes.forgotPassword, page: ForgotPassword),
    RouteDef(Routes.passwordVerificationScreen,
        page: PasswordVerificationScreen),
    RouteDef(Routes.newPassword, page: NewPassword),
    RouteDef(Routes.home, page: Home),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SignUp: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUp(),
        settings: data,
      );
    },
    SignIn: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignIn(),
        settings: data,
      );
    },
    VerificationScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VerificationScreen(),
        settings: data,
      );
    },
    SavePin: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SavePin(),
        settings: data,
      );
    },
    ForgotPassword: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPassword(),
        settings: data,
      );
    },
    PasswordVerificationScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PasswordVerificationScreen(),
        settings: data,
      );
    },
    NewPassword: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewPassword(),
        settings: data,
      );
    },
    Home: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Home(),
        settings: data,
      );
    },
  };
}
