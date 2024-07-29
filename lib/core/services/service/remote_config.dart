abstract class RemoteConfig {
  Future<void> initRemote();
  Future<bool> getBool(String key);
  Future<String> getString(String key);
  Future<int> getInt(String key);
  Future<double> getDouble(String key);
  Future<void> setDefaultValues(Map<String, dynamic> defaultValues);
}
