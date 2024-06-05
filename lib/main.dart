import 'package:flutter/material.dart';
import 'package:frontend/pages/crisis_hotlines.dart';
import 'package:frontend/pages/facilities.dart';
import 'package:frontend/pages/feed.dart';
import 'package:frontend/pages/group_details.dart';
import 'package:frontend/pages/support_groups.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: SupportGroups(),
    );
  }
}
