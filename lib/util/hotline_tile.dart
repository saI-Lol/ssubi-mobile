// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class HotlineTile extends StatelessWidget {
  final String tileName;
  final String tileHotline;
  final Color avatarColor;

  // HotlineTile class constructor
  HotlineTile({
    super.key,
    required this.tileName,
    required this.tileHotline,
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
            // Expanded to take available space
            Expanded(
              child: Row(
                children: [
                  // Circle avatar with tileName initial
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: avatarColor,
                    child: Text(
                      tileName[0].toUpperCase(),
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
                          tileName,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(
                              fontSize: 16.0, color: Color(0xFF32313A)),
                        ),
                        Text(
                          tileHotline,
                          overflow: TextOverflow.ellipsis,
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

            // Button
            SizedBox(
              width: 64,
              child: AspectRatio(
                aspectRatio: 2,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Call',
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
