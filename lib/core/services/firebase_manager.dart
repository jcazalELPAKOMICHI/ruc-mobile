import 'package:ruc/core/injectable/injectable.dart';
import 'package:ruc/core/services/firebase/analytics_iml.dart';
import 'package:ruc/core/services/firebase/crashlytics_iml.dart';
import 'package:ruc/core/services/firebase/notification_iml.dart';
import 'package:ruc/core/services/firebase/perfomance_iml.dart';
import 'package:ruc/core/services/firebase/remote_config_iml.dart';
import 'package:ruc/core/services/service/analytics.dart';
import 'package:ruc/core/services/service/crashlytics.dart';
import 'package:ruc/core/services/service/notification.dart';
import 'package:ruc/core/services/service/perfomance.dart';
import 'package:ruc/core/services/service/remote_config.dart';

class FirebaseManager {
  FirebaseManager() {
    getIt
      ..registerSingleton<Crashlytics>(FirebaseCrashlyticsIml())
      ..registerSingleton<Perfomance>(FirebasePerfomanceDio())
      ..registerSingleton<Analytics>(FireabaseAnalyticsIml())
      ..registerSingleton<RemoteConfig>(FirebaseRemoteConfigIml())
      ..registerSingleton<Notification>(FirebaseNotificationIml());
  }
}
