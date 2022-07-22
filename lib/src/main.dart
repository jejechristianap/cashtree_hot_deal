// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:flutter/foundation.dart';
import 'package:cashtree_hot_deal/src/dependency.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/hot_deal_app.dart';

void main() async {
  Dependency.init();
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const HotDealApp());

  /// Only Submit error when release mode
  // if (kReleaseMode) {
  //   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  // }
}
