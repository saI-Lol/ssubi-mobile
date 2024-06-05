// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frontend/pages/group_details.dart';
import 'package:frontend/util/event_card.dart';

class GroupEvents extends StatefulWidget {
  final String groupName;
  final String createdBy;

  const GroupEvents(
      {Key? key, required this.groupName, required this.createdBy})
      : super(key: key);

  @override
  State<GroupEvents> createState() => _GroupEventsState();
}

class _GroupEventsState extends State<GroupEvents> {
  // List of event data
  List<List<dynamic>> events = [
    [
      'Dealing with Addiction',
      'Join us and gain insights from experts, participate in workshops, and connect with a supportive community. Access resources, engage in Q&A sessions, and take the first step towards healing. \n\nWhether you\'re personally affected or supporting a loved one, find hope and guidance at our event. Reserve your spot today.',
      '28 Dec, 2024',
      '9AM to 1PM',
      'Lumumba Grounds, New Kira Rd, Bukoto.',
      const AssetImage('assets/images/anxiety.jpg'),
      '18:00'
    ],
    [
      'Mental Health in Youth',
      'Discover guidance from specialists, engage in workshops, and unite with a nurturing community. Access tools, join Q&A sessions, and embark on your journey to wellness. \n\nWhether you\'re impacted directly or supporting a friend, find solace and direction at our event. Secure your spot now.',
      '18 Oct, 2024',
      '9AM to 1PM',
      'Serena Conference Center, Kampala.',
      const AssetImage('assets/images/together.jpg'),
      'Yesterday at 09:15'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFEFF),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xFFFCFEFF),
        ),
        leadingWidth: 32.0,
        backgroundColor: const Color(0xFF647AFF),
        title: GestureDetector(
          onTap: () {
            // Navigate to GroupDetails screen when the appbar is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GroupDetails(
                  groupName: widget.groupName,
                  createdBy: widget.createdBy,
                  // groupDesc: widget.description,
                  // dateCreated: widget.dateCreated,
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name of the Support Group
              Text(
                widget.groupName,
                style:
                    const TextStyle(fontSize: 20.0, color: Color(0xFFFCFEFF)),
              ),

              // Name of respective Mental Health Facility
              Text(
                widget.createdBy,
                style:
                    const TextStyle(fontSize: 12.0, color: Color(0xFFD1D7FF)),
              ),
            ],
          ),
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
