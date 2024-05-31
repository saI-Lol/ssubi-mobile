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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // date posted
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
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
                color: Color(0xFFF6F7FF),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      // event image
                      AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Container(
                          color: Colors.purple,
                          padding: EdgeInsets.all(10.0),
                          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
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
                                // Datetime
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
                                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. \n\nUt wisi enim ad minim veniam, quis nostrud exercitation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xFF666666)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // event title and bookmark icon row
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
