import 'package:flutter/material.dart';

class HotlineTile extends StatelessWidget {
  final String hotlineName;
  final String hotlineNumber;
  // final String hotlineInitial;

  // Hotline class constructor
  HotlineTile({
    super.key,
    required this.hotlineName,
    required this.hotlineNumber,
    // required this.hotlineInitial,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.grey[200],
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
                  backgroundColor: Color(0xFF647AFF),
                  child: Text(
                    'S',
                    style: TextStyle(fontSize: 32.0, color: Color(0xFFFCFEFF)),
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
                      hotlineName,
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xFF32313A)),
                    ),
                    Text(
                      hotlineNumber,
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
                    'Call',
                    style: TextStyle(color: Color(0xFFFCFEFF), fontSize: 14.0),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF647AFF),
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
