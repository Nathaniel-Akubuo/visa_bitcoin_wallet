import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_initial_view_model.dart';

class HomeInitial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    var util = Provider.of<Util>(context, listen: true);
    return ViewModelBuilder<HomeInitialViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: IndexedStack(
//            index: util.bottomNavigationBarIndex,
//            children: util.pages,
                  ),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.white,
                elevation: 0,
//            selectedItemColor: kMoliteYellow,
//            unselectedItemColor: kMoliteBlue,
//            currentIndex: util.bottomNavigationBarIndex,
//            onTap: (index) => util.bottomNavigationBarIndex = index,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.work), label: 'Mobilizations'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.dashboard), label: 'Dashboard'),
                ],
              ),
            ),
        viewModelBuilder: () => HomeInitialViewModel());
  }
}
