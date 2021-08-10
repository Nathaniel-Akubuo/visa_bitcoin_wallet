import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/constants/ui_helpers.dart';
import 'package:visa_bitcoin_wallet/util/util.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';

import 'home_initial_view_model.dart';

class HomeInitial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var util = Provider.of<Util>(context, listen: true);
    return ViewModelBuilder<HomeInitialViewModel>.reactive(
        builder: (context, model, child) => Stack(
              children: [
                drawer(context),
                Scaffold(
                  body: IndexedStack(
                    index: util.bottomNavigationBarIndex,
                    children: util.pages,
                  ),
                  bottomNavigationBar: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: Colors.white,
                    selectedItemColor: kSelectedItemColor,
                    unselectedItemColor: kUnselectedItemColor,
                    currentIndex: util.bottomNavigationBarIndex,
                    onTap: (index) => util.bottomNavigationBarIndex = index,
                    showUnselectedLabels: false,
                    showSelectedLabels: false,
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: 'Home'),
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.clock_fill), label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.mail), label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person), label: ''),
                    ],
                  ),
                )
              ],
            ),
        viewModelBuilder: () => HomeInitialViewModel());
  }

  Widget drawer(context) {
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
            ListTile(title: Text('Home', style: kMSReferenceSansSerif)),
            verticalSpaceMedium,
            ListTile(title: Text('Transactions', style: kMSReferenceSansSerif)),
            verticalSpaceMedium,
            ListTile(title: Text('Bank Details', style: kMSReferenceSansSerif)),
            verticalSpaceMedium,
            ListTile(title: Text('Profile', style: kMSReferenceSansSerif)),
            verticalSpaceMedium,
            ListTile(title: Text('Logout', style: kMSReferenceSansSerif)),
          ],
        ),
      ),
    );
  }
}
