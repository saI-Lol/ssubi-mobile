import 'package:flutter/material.dart';
import 'package:frontend/pages/crisis_hotlines.dart';
import 'package:frontend/pages/group_events.dart';
import 'package:frontend/pages/support_groups.dart';
import 'package:frontend/pages/support_groups.dart';
import 'package:frontend/util/hotline_tile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: const SupportGroups(), // Crisis Hotlines Widget
      routes: {
        '/supportGroups': (context) => const SupportGroups(),
        '/groupEvents': (context) => const GroupEvents(),
      },
    );
  }
}
