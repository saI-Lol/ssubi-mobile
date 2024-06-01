// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // date posted
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 12.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            decoration: BoxDecoration(
              color: Color(0xFFF6F7FF),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              '28 Dec, 2024',
              style: TextStyle(fontSize: 10.0, color: Color(0xFF647AFF)),
            ),
          ),
        ),

        // event card
        Container(
          // decoration:
          // BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          color: Color(0xFFF6F7FF),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // event image
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Container(
                    // color: Colors.purple,
                    // padding: EdgeInsets.all(10.0),
                    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image(
                        image: AssetImage('../../assets/images/2148171701.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Dealing with Addiction',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF32313A)),
                          ),
                          // bookmark icon
                          Icon(
                            Icons.bookmark,
                            color: Color(0xFFAAAAAA),
                          )
                        ],
                      ),
                    ),

                    // Datetime and Location Row
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Datetime of event posted
                          Text(
                            '28 Dec, 2024. 9AM to 1PM',
                            style: TextStyle(
                                fontSize: 10.0, color: Color(0xFF999999)),
                          ),

                          // Location
                          Text(
                            'Lumumba Grounds, New Kira Rd Bukoto',
                            style: TextStyle(
                                fontSize: 10.0, color: Color(0xFF999999)),
                          ),
                        ],
                      ),
                    ),

                    // event description
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
                              'Join us and gain insights from experts, participate in workshops, and connect with a supportive community. Access resources, engage in Q&A sessions, and take the first step towards healing. \n\nWhether you\'re personally affected or supporting a loved one, find hope and guidance at our event. Reserve your spot today.',
                              style: TextStyle(
                                  fontSize: 14.0, color: Color(0xFF666666)),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // time posted
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '18:00',
                            style: TextStyle(
                                fontSize: 10.0, color: Color(0xFF999999)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                // event title and bookmark icon row
              ],
            ),
          ),
        )
      ],
    );
  }
}
