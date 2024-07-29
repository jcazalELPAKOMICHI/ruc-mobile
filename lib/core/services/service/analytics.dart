import 'package:flutter/material.dart';

abstract class Analytics {
  Future<void> analyticsLogEvent(
    String eventType, {
    Map<String, Object?>? parameterMap,
  });

  Future<void> serUserId(String userId);

  Future<void> setUserProperty({required String name, required String value});

  RouteObserver<ModalRoute<dynamic>> observer();
}
