// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  // Variables that make up the event data
  final String eventTitle;
  final String eventDesc;
  final String eventDate;
  final String eventTime;
  final String eventLocation;
  final ImageProvider eventImage;
  final String eventPostDate;

  EventCard({
    super.key,
    required this.eventTitle,
    required this.eventDesc,
    required this.eventDate,
    required this.eventTime,
    required this.eventLocation,
    required this.eventImage,
    required this.eventPostDate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Date posted
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 12.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            decoration: BoxDecoration(
              color: Color(0xFFF6F7FF),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              eventPostDate,
              style: TextStyle(fontSize: 10.0, color: Color(0xFF647AFF)),
            ),
          ),
        ),

        // Event card
        Container(
          color: Color(0xFFF6F7FF),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // Event image
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image(
                      fit: BoxFit.cover,
                      image: eventImage,
                    ),
                  ),
                ),

                // Event title and bookmark icon row
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            eventTime,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF32313A)),
                          ),
                          // Bookmark icon
                          Icon(
                            Icons.bookmark,
                            color: Color(0xFFAAAAAA),
                          ),
                        ],
                      ),
                    ),

                    // Datetime and location row
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Datetime of event
                          Text(
                            '$eventDate. $eventTime',
                            style: TextStyle(
                                fontSize: 10.0, color: Color(0xFF999999)),
                          ),

                          // Location
                          Text(
                            eventLocation,
                            style: TextStyle(
                                fontSize: 10.0, color: Color(0xFF999999)),
                          ),
                        ],
                      ),
                    ),

                    // Event description
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF32313A)),
                          ),

                          // Description content
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text(
                              eventDesc,
                              style: TextStyle(
                                  fontSize: 14.0, color: Color(0xFF666666)),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Time posted
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            eventPostDate,
                            style: TextStyle(
                                fontSize: 10.0, color: Color(0xFF999999)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
