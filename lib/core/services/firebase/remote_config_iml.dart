import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:ruc/core/services/service/remote_config.dart';

class FirebaseRemoteConfigIml implements RemoteConfig {
  late FirebaseRemoteConfig _remoteConfig;

  @override
  Future<void> initRemote() async {
    _remoteConfig = FirebaseRemoteConfig.instance;
    if (kDebugMode) {
      await _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(minutes: 5),
      ));
    }
    await _remoteConfig.activate();
  }

  @override
  Future<bool> getBool(String key) async {
    return _remoteConfig.getBool(key);
  }

  @override
  Future<double> getDouble(String key) async {
    return _remoteConfig.getDouble(key);
  }

  @override
  Future<int> getInt(String key) async {
    return _remoteConfig.getInt(key);
  }

  @override
  Future<String> getString(String key) async {
    return _remoteConfig.getString(key);
  }

  @override
  Future<void> setDefaultValues(Map<String, dynamic> defaultValues) async {
    await _remoteConfig.setDefaults(defaultValues);
  }
}
