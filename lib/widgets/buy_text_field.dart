import 'package:flutter/material.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';

class BuyTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isFocusable;
  final String suffixText;
  final Function validator;

  BuyTextField(
      {this.controller, this.isFocusable, this.suffixText, this.validator});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 20),
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white)),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: controller,
            enabled: isFocusable,
            style: kConsolasSubtitle,
            validator: validator,
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
        Container(
          height: 56,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          child: Center(
            child: Text(
              suffixText,
              style: kMSReferenceSansSerif.copyWith(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
