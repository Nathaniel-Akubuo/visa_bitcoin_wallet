import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:visa_bitcoin_wallet/app/app.locator.dart';
import 'package:visa_bitcoin_wallet/util/util.dart';

import 'app/app.router.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Util()),
      ],
      child: MaterialApp(
        theme: ThemeData(
            unselectedWidgetColor: Colors.white,
            scaffoldBackgroundColor: Colors.transparent),
        debugShowCheckedModeBanner: false,
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        initialRoute: Routes.homeInitial,
      ),
    );
  }
}
