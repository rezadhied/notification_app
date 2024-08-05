import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:notification_app/main.dart';


class FirebaseApi {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    print('Token: $fCMToken');
    initPushNotification();
  }

  void handleMessage(RemoteMessage? message) {
    if (message == null) {
      return;
    }
    navigatorKey.currentState
        ?.pushNamed('/notification_screen', arguments: message);
  }

  Future initPushNotification() async {
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
