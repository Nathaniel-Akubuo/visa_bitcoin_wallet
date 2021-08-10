import 'package:flutter/material.dart';

class BuyAndSellContainer extends StatelessWidget {
  final Widget child;
  final BoxDecoration decoration;
  final Function onTap;

  BuyAndSellContainer({this.child, this.decoration, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 63,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 40),
          child: Center(
              child: child),
        ),
        decoration: decoration,
      ),
    );
  }
}
