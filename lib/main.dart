// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/event_reminder.dart';
import 'package:flutter_application_1/pages/flash_screen.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/get_started.dart';
import 'package:flutter_application_1/pages/crisis_hotlines.dart';
import 'package:flutter_application_1/pages/daily_tips.dart';
import 'package:flutter_application_1/pages/home.dart';




void main() {
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      
        
      

      
      
      
    );
  }
}
