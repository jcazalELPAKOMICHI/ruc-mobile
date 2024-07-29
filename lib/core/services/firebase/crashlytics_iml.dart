import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:ruc/core/services/service/crashlytics.dart';

class FirebaseCrashlyticsIml implements Crashlytics {
  @override
  Future<void> crashCustomErrors(String message) async {
    await FirebaseCrashlytics.instance.log(message);
  }

  @override
  void recordError(exception, StackTrace stack) {
    FirebaseCrashlytics.instance.recordError(exception, stack);
  }

  @override
  Future<void> recordUncaughtError(FlutterErrorDetails details) async {
    await FirebaseCrashlytics.instance.recordFlutterError(details);
  }

  @override
  Future<void> setUserIdentifier(String userID) async {
    await FirebaseCrashlytics.instance.setUserIdentifier(userID);
  }

  @override
  Future<void> init() async {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    if (kDebugMode) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    }
  }
}
