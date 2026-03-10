import 'package:flutter/material.dart';
import 'package:water_products/core/theme/app_theme.dart';
import 'package:water_products/l10n/app_localizations.dart';

import 'core/routes/app_route.dart';
import 'core/services/routes_helper_navigation.dart';

class WaterApp extends StatelessWidget {
  const WaterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      locale: Locale('ar'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: AppRoute.onGenerateRoute,
      initialRoute: (RoutesHelper.isAppeared)
          ? AppRoute.loginScreen
          : AppRoute.onBoardingScreen,
    );
  }
}
