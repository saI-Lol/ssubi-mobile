import 'package:flutter/material.dart';

class HotlineTile extends StatelessWidget {
  final String tileName;
  final String tileHotline;
  final Color avatarColor;

  // HotlineTile class constructor
  const HotlineTile({
    super.key,
    required this.tileName,
    required this.tileHotline,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFEEEEEE),
              width: 1,
            ),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 12.0),
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
                      style: const TextStyle(
                          fontSize: 28.0,
                          color: Color(0xFFFCFEFF),
                          fontWeight: FontWeight.w200),
                    ),
                  ),

                  // SizedBox to separate avatar and column
                  const SizedBox(width: 16.0),

                  // Flexible to constrain column
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tileName,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                              fontSize: 16.0, color: Color(0xFF32313A)),
                        ),
                        Text(
                          tileHotline,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
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
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF58D68D),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                  child: const Center(
                    child: Text(
                      'Call',
                      style:
                          TextStyle(color: Color(0xFFFCFEFF), fontSize: 14.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
