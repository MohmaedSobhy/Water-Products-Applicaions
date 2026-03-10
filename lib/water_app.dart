import 'package:flutter/material.dart';
import 'package:water_products/core/theme/app_theme.dart';
import 'package:water_products/l10n/app_localizations.dart';

import 'core/routes/app_route.dart';

class WaterApp extends StatelessWidget {
  const WaterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: AppRoute.onBoardingScreen,
      locale: Locale('ar'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
