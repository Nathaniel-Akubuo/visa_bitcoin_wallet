import 'package:flutter/material.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';

class BodyWidget extends StatelessWidget {
  final Widget child;

  BodyWidget({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: kLinearGradient),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: kPadding,
            child: child,
          ),
        ),
      ),
    );
  }
}
