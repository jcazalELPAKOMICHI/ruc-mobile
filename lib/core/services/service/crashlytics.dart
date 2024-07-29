import 'package:flutter/material.dart';

abstract class Crashlytics {
  Future<void> init();
  Future<void> recordUncaughtError(FlutterErrorDetails details);
  void recordError(dynamic exception, StackTrace stack);
  Future<void> setUserIdentifier(String userID);
  Future<void> crashCustomErrors(String message);
}
