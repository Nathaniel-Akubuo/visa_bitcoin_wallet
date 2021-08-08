import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/constants/styles.dart';
import 'package:visa_bitcoin_wallet/util/util.dart';

import 'home_initial_view_model.dart';

class HomeInitial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var util = Provider.of<Util>(context, listen: true);
    return ViewModelBuilder<HomeInitialViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
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
            ),
        viewModelBuilder: () => HomeInitialViewModel());
  }
}
