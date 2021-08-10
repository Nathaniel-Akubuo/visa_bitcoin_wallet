import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/app/app.router.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';

class HomeViewModel extends BaseViewModel {
  buyBTC() {
    navigationService.navigateTo(Routes.buyBTC);
  }

  sellBTC() {
    navigationService.navigateTo(Routes.sellBTC);
  }
}
