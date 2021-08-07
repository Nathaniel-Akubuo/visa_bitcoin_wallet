import 'package:flutter/material.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;

  GradientContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: kLinearGradient),
      child: child,
    );
  }
}
