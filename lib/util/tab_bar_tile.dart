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
      padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Row with avatar and text details column
            Row(
              children: [
                // Circle avatar with hotlineInitial
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

                // sized box to separate avatar and column
                SizedBox(
                  width: 16.0,
                ),

                // Column with hotline details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(hotlineInitial[0].toUpperCase()),
                    Text(
                      groupName,
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xFF32313A)),
                    ),
                    Text(
                      createdBy,
                      style:
                          TextStyle(fontSize: 12.0, color: Color(0xFF666666)),
                    ),
                  ],
                ),
              ],
            ),

            // Button
            SizedBox(
              width: 64,
              child: AspectRatio(
                aspectRatio: 2,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Join',
                    style: TextStyle(color: Color(0xFFFCFEFF), fontSize: 14.0),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF58D68D),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
