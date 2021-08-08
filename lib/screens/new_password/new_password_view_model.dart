import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/app/app.router.dart';
import 'package:visa_bitcoin_wallet/constants/global_variables.dart';

class NewPasswordViewModel extends BaseViewModel {
  void toHome() {
    navigationService.navigateTo(Routes.homeInitial);
  }
}
