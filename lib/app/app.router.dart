// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../screens/buy_btc/buy_btc.dart';
import '../screens/buy_btc_2/buy_btc_2.dart';
import '../screens/forgot-password/forgot_password.dart';
import '../screens/home/home.dart';
import '../screens/home_initial/home_initial.dart';
import '../screens/messages/messages.dart';
import '../screens/new_password/new_password.dart';
import '../screens/password_verification/password_verification_screen.dart';
import '../screens/profile/profile.dart';
import '../screens/recent/history.dart';
import '../screens/save_pin/save_pin.dart';
import '../screens/sell_btc/sell_btc.dart';
import '../screens/sign-in/sign_in.dart';
import '../screens/sign-up/sign_up.dart';
import '../screens/transaction_detail/transaction_detail.dart';
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
  static const String homeInitial = '/home-initial';
  static const String home = '/Home';
  static const String history = '/History';
  static const String messages = '/Messages';
  static const String profile = '/Profile';
  static const String buyBTC = '/buy-bt-c';
  static const String buyBTC2 = '/buy-bt-c2';
  static const String sellBTC = '/sell-bt-c';
  static const String transactionDetail = '/transaction-detail';
  static const all = <String>{
    signUp,
    signIn,
    verificationScreen,
    savePin,
    forgotPassword,
    passwordVerificationScreen,
    newPassword,
    homeInitial,
    home,
    history,
    messages,
    profile,
    buyBTC,
    buyBTC2,
    sellBTC,
    transactionDetail,
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
    RouteDef(Routes.homeInitial, page: HomeInitial),
    RouteDef(Routes.home, page: Home),
    RouteDef(Routes.history, page: History),
    RouteDef(Routes.messages, page: Messages),
    RouteDef(Routes.profile, page: Profile),
    RouteDef(Routes.buyBTC, page: BuyBTC),
    RouteDef(Routes.buyBTC2, page: BuyBTC2),
    RouteDef(Routes.sellBTC, page: SellBTC),
    RouteDef(Routes.transactionDetail, page: TransactionDetail),
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
    HomeInitial: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeInitial(),
        settings: data,
      );
    },
    Home: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Home(),
        settings: data,
      );
    },
    History: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => History(),
        settings: data,
      );
    },
    Messages: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Messages(),
        settings: data,
      );
    },
    Profile: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Profile(),
        settings: data,
      );
    },
    BuyBTC: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BuyBTC(),
        settings: data,
      );
    },
    BuyBTC2: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BuyBTC2(),
        settings: data,
      );
    },
    SellBTC: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SellBTC(),
        settings: data,
      );
    },
    TransactionDetail: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TransactionDetail(),
        settings: data,
      );
    },
  };
}
