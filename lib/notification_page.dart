import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   _showDialog();
  // }

  // Future<void> _showDialog() async {
  //   await Future.delayed(Duration.zero);
  // }

  @override
  Widget build(BuildContext context) {
    final message =
        ModalRoute.of(context)!.settings.arguments as RemoteMessage?;

    return Scaffold(
      appBar: AppBar(title: const Text('Notification')),
      body: Builder(builder: (context) {
        Future(
          () => showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  message?.notification!.title ?? '',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Text(
                  message?.notification!.body ?? '',
                ),
              );
            },
          ),
        );

        return Column(
          children: [
            Text(''),
          ],
        );
      }),
    );
  }
}
