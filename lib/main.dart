import 'package:flutter/material.dart';
import 'package:frontend/pages/crisis_hotlines.dart';
import 'package:frontend/pages/support_groups.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: SupportGroups(), // Crisis Hotlines Widget
    );
  }
}
