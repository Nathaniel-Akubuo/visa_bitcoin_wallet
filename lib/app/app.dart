import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:visa_bitcoin_wallet/screens/forgot-password/forgot_password.dart';
import 'package:visa_bitcoin_wallet/screens/home/home.dart';
import 'package:visa_bitcoin_wallet/screens/new_password/new_password.dart';
import 'package:visa_bitcoin_wallet/screens/password_verification/password_verification_screen.dart';
import 'package:visa_bitcoin_wallet/screens/save_pin/save_pin.dart';
import 'package:visa_bitcoin_wallet/screens/sign-in/sign_in.dart';
import 'package:visa_bitcoin_wallet/screens/sign-up/sign_up.dart';
import 'package:visa_bitcoin_wallet/screens/verification_screen/verification_screen.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SignUp),
    MaterialRoute(page: SignIn),
    MaterialRoute(page: VerificationScreen),
    MaterialRoute(page: SavePin),
    MaterialRoute(page: ForgotPassword),
    MaterialRoute(page: PasswordVerificationScreen),
    MaterialRoute(page: NewPassword),
    MaterialRoute(page: Home),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {}
