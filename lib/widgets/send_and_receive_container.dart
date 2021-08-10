import 'package:flutter/material.dart';

class SendAndReceiveContainer extends StatelessWidget {
  final Widget child;
  final BoxDecoration decoration;

  SendAndReceiveContainer({this.child, this.decoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
      decoration: decoration,
      child: child,
    );
  }
}
