import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/screens/home_initial/home_initial.dart';
import 'package:visa_bitcoin_wallet/util/ui.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';

class HiddenDrawerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildDrawer(context),
          buildBody(context),
        ],
      ),
    );
  }

  Widget buildDrawer(context) {
    return GradientBodyWidget(
      padding: EdgeInsets.only(left: 20),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceMedium,
            Row(
              children: [
                CircleAvatar(radius: 25, child: Icon(Icons.person)),
                horizontalSpaceSmall,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nathaniel Akubuo',
                        style: kConsolasSubtitle.copyWith(fontSize: 15)),
                    Text('nakubuo@gmail.com',
                        style: kConsolasSubtitle.copyWith(
                            fontSize: 12, color: Colors.grey)),
                  ],
                )
              ],
            ),
            verticalSpaceLarge,
            Text('Home', style: kMSReferenceSansSerif),
            verticalSpaceLarge,
            Text('Transactions', style: kMSReferenceSansSerif),
            verticalSpaceLarge,
            Text('Bank Details', style: kMSReferenceSansSerif),
            verticalSpaceLarge,
            Text('Profile', style: kMSReferenceSansSerif),
            verticalSpaceLarge,
            Text('Logout', style: kMSReferenceSansSerif),
          ],
        ),
      ),
    );
  }

  Widget buildBody(context) {
    var uiUtil = Provider.of<UIUtil>(context, listen: true);
    return GestureDetector(
      onTap: uiUtil.isDrawerOpen() ? uiUtil.closeDrawer : null,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        transform: Matrix4.translationValues(uiUtil.xOffset, uiUtil.yOffset, 0)
          ..scale(uiUtil.scale),
        child: ClipRRect(
            borderRadius: uiUtil.isDrawerOpen()
                ? kCircularBorderRadius
                : BorderRadius.zero,
            child: HomeInitial()),
      ),
    );
  }
}
