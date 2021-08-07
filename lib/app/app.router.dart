// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../screens/sign-in/sign_in.dart';
import '../screens/sign-up/sign_up.dart';
import '../screens/verification_screen/verification_screen.dart';

class Routes {
  static const String signUp = '/sign-up';
  static const String signIn = '/sign-in';
  static const String verificationScreen = '/verification-screen';
  static const all = <String>{
    signUp,
    signIn,
    verificationScreen,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.signUp, page: SignUp),
    RouteDef(Routes.signIn, page: SignIn),
    RouteDef(Routes.verificationScreen, page: VerificationScreen),
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
  };
}
