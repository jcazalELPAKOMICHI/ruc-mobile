import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:ruc/core/services/service/analytics.dart';

class FireabaseAnalyticsIml implements Analytics {
  @override
  Future<void> analyticsLogEvent(String eventType,
      {Map<String, Object?>? parameterMap}) async {
    await FirebaseAnalytics.instance
        .logEvent(name: eventType, parameters: parameterMap);
  }

  @override
  Future<void> serUserId(String userId) async {
    await FirebaseAnalytics.instance.setUserId(id: userId);
  }

  @override
  Future<void> setUserProperty(
      {required String name, required String value}) async {
    await FirebaseAnalytics.instance.setUserProperty(name: name, value: value);
  }

  @override
  RouteObserver<ModalRoute<dynamic>> observer() {
    return FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance);
  }
}
