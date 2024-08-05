import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Reza Adhie Dharmawan - 1302213016'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Text('Aplikasi Notifikasi by Reza'),
        ),
      ),
    );
  }
}
