import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notification_app/api/firebase_api.dart';
import 'package:notification_app/firebase_options.dart';
import 'package:notification_app/home_page.dart';
import 'package:notification_app/notification_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotification();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      navigatorKey: navigatorKey,
      routes: {'/notification_screen': (context) => const NotificationPage()},
    );
  }


  
}
