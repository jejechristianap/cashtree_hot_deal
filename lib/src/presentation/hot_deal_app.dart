import 'dart:io';

import 'package:cashtree_hot_deal/src/domain/utils/constant.dart';
import 'package:cashtree_hot_deal/src/presentation/splash/splash_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import '../../generated/l10n.dart';
import '../config/route/app_route.dart';
import '../config/route/route_constant.dart';
import '../config/style/app_theme.dart';

class HotDealApp extends StatelessWidget {
  const HotDealApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constant.appName,
      theme: AppTheme.main,
      getPages: AppRoute.routes,
      initialRoute: RouteConstant.splash,
      initialBinding: SplashBinding(),
      debugShowCheckedModeBanner: false,
      defaultTransition: Platform.isIOS ? Transition.native : Transition.zoom,
      transitionDuration:
          Platform.isIOS ? null : const Duration(milliseconds: 300),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
