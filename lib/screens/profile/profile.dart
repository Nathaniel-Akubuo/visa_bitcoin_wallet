import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:visa_bitcoin_wallet/screens/profile/profile_view_model.dart';
import 'package:visa_bitcoin_wallet/widgets/gradient_body_widget.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
        builder: (context, model, child) => GradientBodyWidget(),
        viewModelBuilder: () => ProfileViewModel());
  }
}
