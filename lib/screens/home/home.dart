import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/home/home_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/buy_and_sell_container.dart';
import 'package:visa_bitcoin_wallet/widgets/scrolling_body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                leading: Icon(
                  Icons.menu,
                  color: kDarkestBlue,
                ),
                actions: [
                  Stack(alignment: Alignment.center, children: [
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: kDarkestBlue,
                    ),
                    Text('2')
                  ]),
                  horizontalSpaceTiny
                ],
              ),
              body: PaddedScrollingBody(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              r'$600',
                              style: kSegoe.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                            Text(
                              '0.04 BTC',
                              style: kSegoe.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 3),
                              child: Text(
                                'Send',
                                style: kSegoe.copyWith(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(color: Colors.white)),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 3),
                              child: Text(
                                'Receive',
                                style: kSegoe.copyWith(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  color: kDarkestBlue,
                                  borderRadius: BorderRadius.circular(24)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  verticalSpaceLarge,
                  Text('Market Stats',
                      style: kConsolasTitle.copyWith(
                          color: Colors.black, fontSize: 18)),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: kDarkerBlue),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 25),
                            child: Text('B', style: kGeorgia),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bitcoin',
                              style: kMSReferenceSansSerif.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              r'$40,000',
                              style: kMSReferenceSansSerif.copyWith(
                                  color: Colors.grey, fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 25),
                            child: Text('E', style: kGeorgia),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ethereum',
                              style: kMSReferenceSansSerif.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              r'$2,000',
                              style: kMSReferenceSansSerif.copyWith(
                                  color: Colors.grey, fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.orange),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 25),
                            child: Text('D', style: kGeorgia),
                          ),
                        ),
                        horizontalSpaceSmall,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dogecoin',
                              style: kMSReferenceSansSerif.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              r'$70',
                              style: kMSReferenceSansSerif.copyWith(
                                  color: Colors.grey, fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  verticalSpaceLarge,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuyAndSellContainer(
                        child: Text('Buy',
                            style: kMicrosoftJhengHei.copyWith(
                                color: Colors.white)),
                        decoration: BoxDecoration(
                            borderRadius: twentyFourBorderRadius,
                            gradient: kButtonGradient),
                      ),
                      BuyAndSellContainer(
                        child: Text('Sell', style: kMicrosoftJhengHei),
                        decoration: BoxDecoration(
                            borderRadius: twentyFourBorderRadius,
                            border: Border.all(color: kDarkestBlue)),
                      )
                    ],
                  )
                ],
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
