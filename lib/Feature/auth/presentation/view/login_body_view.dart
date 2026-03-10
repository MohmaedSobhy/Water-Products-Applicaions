import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class LoginBodyView extends StatelessWidget {
  const LoginBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Image(image: AssetImage(AppImageAssets.appLogo))],
    );
  }
}
