// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/pages/support_groups.dart';
import 'package:frontend/util/event_card.dart';

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
          iconTheme: IconThemeData(
            color: Color(0xFFFCFEFF), // Change the color to your desired color
          ),
          leadingWidth: 28.0,
          backgroundColor: Color(0xFF647AFF),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name of the Support Group
              Text(
                'Strong Minds Ug',
                style: TextStyle(fontSize: 20.0, color: Color(0xFFFCFEFF)),
              ),

              // Name of respective Mental Health Facility
              Text(
                'Strong Minds Uganda',
                style: TextStyle(fontSize: 12.0, color: Color(0xFFD1D7FF)),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: ListView(children: [
            EventCard(),
          ]),
        ));
  }
}
