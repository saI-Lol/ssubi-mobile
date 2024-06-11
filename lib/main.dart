import 'package:flutter/material.dart';
import 'package:frontend/pages/about_suubi.dart';
import 'package:frontend/pages/profile.dart';
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
      home: Profile(),
    );
  }
}
