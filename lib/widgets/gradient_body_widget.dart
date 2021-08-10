import 'package:flutter/material.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';

class GradientBodyWidget extends StatelessWidget {
  final AppBar appBar;
  final Widget child;
  final EdgeInsetsGeometry padding;

  GradientBodyWidget({this.appBar,this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: kLinearGradient),
      child: SafeArea(
        child: Scaffold(
          appBar: appBar,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: padding ?? kPadding,
            child: child,
          ),
        ),
      ),
    );
  }
}
