import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  final Color buttonColor;
  final Widget child;
  final Color textColor;
  final Function onPressed;

  RoundedButton({this.buttonColor, this.child, this.onPressed, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: buttonColor ?? Colors.white,
        borderRadius: BorderRadius.circular(16),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: double.infinity,
          height: 50,
          child: child,
        ),
      ),
    );
  }
}
