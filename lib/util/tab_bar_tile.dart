// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TabBarTile extends StatelessWidget {
  final String groupName;
  final String createdBy;
  final Color avatarColor;

  // TabBarTile class constructor
  TabBarTile({
    super.key,
    required this.groupName,
    required this.createdBy,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 12.0, 0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFEEEEEE),
              width: 1,
            ),
          ),
        ),
        padding: EdgeInsets.fromLTRB(0, 0, 0, 12.0),
        child: GestureDetector(
          onTap: () {
            // onTap logic here for navigating to support group details
            Navigator.pushNamed(context, '/groupEvents');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Expanded to take available space
              Expanded(
                child: Row(
                  children: [
                    // Circle avatar with groupName initial
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: avatarColor,
                      child: Text(
                        groupName[0].toUpperCase(),
                        style: TextStyle(
                            fontSize: 28.0,
                            color: Color(0xFFFCFEFF),
                            fontWeight: FontWeight.w200),
                      ),
                    ),

                    // SizedBox to separate avatar and column
                    SizedBox(width: 16.0),

                    // Flexible to constrain column
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            groupName,
                            overflow: TextOverflow
                                .ellipsis, // make long text end with '...'
                            softWrap: false,
                            style: TextStyle(
                                fontSize: 16.0, color: Color(0xFF32313A)),
                          ),
                          Text(
                            createdBy,
                            overflow: TextOverflow
                                .ellipsis, // make long text end with '...'
                            softWrap: false,
                            style: TextStyle(
                                fontSize: 12.0, color: Color(0xFF666666)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 8.0),

              // Button
              SizedBox(
                width: 64,
                child: AspectRatio(
                  aspectRatio: 2,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Join',
                      style:
                          TextStyle(color: Color(0xFFFCFEFF), fontSize: 14.0),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF58D68D),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
