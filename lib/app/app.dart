import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:visa_bitcoin_wallet/screens/sign-in/sign_in.dart';
import 'package:visa_bitcoin_wallet/screens/sign-up/sign_up.dart';
import 'package:visa_bitcoin_wallet/screens/verification_screen/verification_screen.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SignUp),
    MaterialRoute(page: SignIn),
    MaterialRoute(page: VerificationScreen),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {}
