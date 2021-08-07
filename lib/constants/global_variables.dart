import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:visa_bitcoin_wallet/app/app.locator.dart';

final navigationService = locator<NavigationService>();

SharedPreferences preferences;

final numberFormatter = NumberFormat("#,###.###");

final dateFormatter = DateFormat('MMMM d, y');

RegExp emailRegExp = RegExp(
    r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
