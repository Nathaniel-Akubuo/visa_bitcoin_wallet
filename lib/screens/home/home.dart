import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/home/home_view_model.dart';
import 'package:visa_bitcoin_wallet/util/util.dart';
import 'package:visa_bitcoin_wallet/widgets/buy_and_sell_container.dart';
import 'package:visa_bitcoin_wallet/widgets/card_widget.dart';
import 'package:visa_bitcoin_wallet/widgets/crypto_stat_container.dart';
import 'package:visa_bitcoin_wallet/widgets/scrolling_body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var util = Provider.of<Util>(context, listen: true);
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => GestureDetector(
              onTap: util.isDrawerOpen() ? util.closeDrawer : null,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                transform:
                    Matrix4.translationValues(util.xOffset, util.yOffset, 0)
                      ..scale(util.scale),
                child: ClipRRect(
                  borderRadius: util.isDrawerOpen()
                      ? kCircularBorderRadius
                      : BorderRadius.zero,
                  child: Scaffold(
                    backgroundColor: Colors.white,
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      leading: IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: kDarkestBlue,
                          ),
                          onPressed: util.isDrawerOpen()
                              ? util.closeDrawer
                              : util.openDrawer),
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
                        CardWidget(),
                        verticalSpaceLarge,
                        Text('Market Stats',
                            style: kConsolasTitle.copyWith(
                                color: Colors.black, fontSize: 18)),
                        verticalSpaceRegular,
                        CryptoStatContainer(
                            color: kDarkerBlue,
                            initial: 'B',
                            name: 'Bitcoin',
                            price: r'$40,000'),
                        verticalSpaceRegular,
                        CryptoStatContainer(
                            color: Colors.green,
                            initial: 'E',
                            name: 'Ethereum',
                            price: r'$2,000'),
                        verticalSpaceRegular,
                        CryptoStatContainer(
                            color: Colors.orange,
                            initial: 'D',
                            name: 'Dogecoin',
                            price: r'$70'),
                        verticalSpaceRegular,
                        verticalSpaceLarge,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BuyAndSellContainer(
                              onTap: () => model.buyBTC(),
                              child: Text('Buy',
                                  style: kMicrosoftJhengHei.copyWith(
                                      color: Colors.white)),
                              decoration: BoxDecoration(
                                  borderRadius: twentyFourBorderRadius,
                                  gradient: kButtonGradient),
                            ),
                            BuyAndSellContainer(
                              onTap: () => model.sellBTC(),
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
                ),
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
