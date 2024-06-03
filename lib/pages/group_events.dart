// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/util/event_card.dart';

class GroupEvents extends StatefulWidget {
  final String groupName;
  final String createdBy;

  const GroupEvents(
      {super.key, required this.groupName, required this.createdBy});

  @override
  State<GroupEvents> createState() => _GroupEventsState();
}

class _GroupEventsState extends State<GroupEvents> {
  // list of event data
  List<List<dynamic>> events = [
    [
      'Dealing with Addiction',
      'Join us and gain insights from experts, participate in workshops, and connect with a supportive community. Access resources, engage in Q&A sessions, and take the first step towards healing. \n\nWhether you\'re personally affected or supporting a loved one, find hope and guidance at our event. Reserve your spot today.',
      '28 Dec, 2024',
      '9AM to 1PM',
      'Lumumba Grounds, New Kira Rd, Bukoto.',
      AssetImage('assets/images/2148171701.jpg'),
      '18:00'
    ],
    [
      'Mental Health in Youth',
      'Discover guidance from specialists, engage in workshops, and unite with a nurturing community. Access tools, join Q&A sessions, and embark on your journey to wellness. \n\nWhether you\'re impacted directly or supporting a friend, find solace and direction at our event. Secure your spot now.',
      '18 Oct, 2024',
      '9AM to 1PM',
      'Serena Conference Center, Kampala.',
      AssetImage('assets/images/2148171701.jpg'),
      'Yesterday at 09:15'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFEFF),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFFFCFEFF),
        ),
        leadingWidth: 28.0,
        backgroundColor: Color(0xFF647AFF),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Name of the Support Group
            Text(
              widget.groupName,
              style: TextStyle(fontSize: 20.0, color: Color(0xFFFCFEFF)),
            ),

            // Name of respective Mental Health Facility
            Text(
              widget.createdBy,
              style: TextStyle(fontSize: 12.0, color: Color(0xFFD1D7FF)),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: EventCard(
              eventTitle: events[index][0],
              eventDesc: events[index][1],
              eventDate: events[index][2],
              eventTime: events[index][3],
              eventLocation: events[index][4],
              eventImage: events[index][5],
              eventPostDate: events[index][6],
            ),
          );
        },
      ),
    );
  }
}
