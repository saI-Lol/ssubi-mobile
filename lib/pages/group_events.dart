// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/pages/support_groups.dart';

class GroupEvents extends StatefulWidget {
  const GroupEvents({super.key});

  @override
  State<GroupEvents> createState() => _GroupEventsState();
}

class _GroupEventsState extends State<GroupEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFEFF),
      appBar: AppBar(
        backgroundColor: Color(0xFF647AFF),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Name of the Support Group
            Text(
              'Strong Minds Ug',
              style: TextStyle(fontSize: 20.0, color: Color(0xFFFCFEFF)),
            ),

            // Name of respective Mental Health Facility
            Text(
              'Strong Minds Uganda',
              style: TextStyle(fontSize: 12.0, color: Color(0xFFFCFEFF)),
            ),
          ],
        ),
      ),
    );
  }
}
