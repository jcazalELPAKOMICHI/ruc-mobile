import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:ruc/core/services/service/notification.dart';

class FirebaseNotificationIml implements Notification {
  late NotificationSettings settings;
  late final FirebaseMessaging _messaging;
  late final AndroidNotificationChannel channel;
  late final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  RemoteMessage? _message;

  @override
  Future<String?> getToken() async {
    return _messaging.getToken();
  }

  @override
  void onBackgroundReceived() {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  @override
  Future<void> onReceived() async {
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      FirebaseMessaging.onMessage.listen(_showFlutterNotification);
    }
  }

  @override
  Future<void> pushInit() async {
    channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      description:
          'This channel is used for important notifications.', // description
      importance: Importance.max,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _messaging = FirebaseMessaging.instance;
    await configLocalNotification();
    settings = await _messaging.requestPermission();

    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    _message = await _messaging.getInitialMessage();

    if (_message != null) {
      await _handleMessage(_message!);
    }

    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  Future<void> _handleMessage(RemoteMessage message) async {
    final mapValue = message.data;
    if (mapValue.isNotEmpty) {}
  }

  Future<void> _showFlutterNotification(RemoteMessage message) async {
    final notification = message.notification;
    final android = message.notification?.android;
    _message = message;
    if (notification != null && android != null) {
      await flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            icon: android.smallIcon,
            importance: Importance.max,
            priority: Priority.max,
          ),
        ),
      );
    }
  }

  Future<void> configLocalNotification() async {
    const initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const initializationSettingsIOS = DarwinInitializationSettings();
    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) async {
        if (_message != null) {
          await _handleMessage(_message!);
        }
      },
    );
  }

  @override
  Future<void> subscribeTopic({String topic = 'topic'}) async {
    _messaging.subscribeToTopic(topic);
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}
