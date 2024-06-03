import 'package:flutter/material.dart';

class FacilityTile extends StatelessWidget {
  final String facilityName;
  final String facilityLocation;
  final Color avatarColor;

  // FacilityTile class constructor
  const FacilityTile({
    super.key,
    required this.facilityName,
    required this.facilityLocation,
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
                  // Circle avatar with facilityName initial
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: avatarColor,
                    child: Text(
                      facilityName[0].toUpperCase(),
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
                          facilityName,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                              fontSize: 16.0, color: Color(0xFF32313A)),
                        ),
                        Text(
                          facilityLocation,
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
          ],
        ),
      ),
    );
  }
}
