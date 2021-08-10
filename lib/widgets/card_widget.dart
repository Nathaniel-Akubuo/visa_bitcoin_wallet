import 'package:flutter/material.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/widgets/send_and_receive_container.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPadding.copyWith(top: 15, bottom: 15),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          gradient: kCardGradient,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('BTC WALLET', style: kMSReferenceSansSerif),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                r'$600',
                style: kSegoe.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              Text(
                '0.04 BTC',
                style: kSegoe.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              SendAndReceiveContainer(
                child: Text(
                  'Send',
                  style: kSegoe.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border:
                    Border.all(color: Colors.white)),
              ),
              SendAndReceiveContainer(
                child: Text(
                  'Receive',
                  style: kSegoe.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: kDarkestBlue,
                    borderRadius:
                    BorderRadius.circular(24)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
