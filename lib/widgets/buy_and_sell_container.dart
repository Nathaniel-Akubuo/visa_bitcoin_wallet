import 'package:flutter/material.dart';

class BuyAndSellContainer extends StatelessWidget {
  final Widget child;
  final BoxDecoration decoration;

  BuyAndSellContainer({this.child, this.decoration});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 40, vertical: 20),
        child: Center(
            child: child),
      ),
      decoration: decoration,
    );
  }
}
