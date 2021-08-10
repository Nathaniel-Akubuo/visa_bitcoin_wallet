import 'package:flutter/material.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';

class CryptoStatContainer extends StatelessWidget {
  final String initial;
  final String name;
  final Color color;
  final String price;


  CryptoStatContainer({this.initial, this.name, this.color, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            padding: const EdgeInsets.only(
                left: 20, right: 15, top: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: color),
            child: Center(child: Text(initial, style: kGeorgia)),
          ),
          horizontalSpaceSmall,
          Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: kMSReferenceSansSerif.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                price,
                style: kMSReferenceSansSerif.copyWith(
                    color: Colors.grey, fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }
}
