abstract class Notification {
  Future<void> pushInit();
  Future<String?> getToken();
  Future<void> onReceived();
  void onBackgroundReceived();
  Future<void> subscribeTopic({String topic = 'topic'});
}
