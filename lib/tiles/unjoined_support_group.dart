import 'package:flutter/material.dart';
import 'package:ssubi/main.dart';
import 'package:ssubi/models/support_group.dart';

class UnJoinedSupportGroup extends StatelessWidget {
  final SupportGroup supportGroup;
  final int index;
  const UnJoinedSupportGroup(
      {super.key, required this.supportGroup, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
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
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: index % 2 == 0
                        ? const Color(0xFF647AFF)
                        : const Color(0xFFB0BCFF),
                    child: Text(
                      supportGroup.facilityName[0].toUpperCase(),
                      style: const TextStyle(
                          fontSize: 28.0,
                          color: Color(0xFFFCFEFF),
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          supportGroup.name,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: const TextStyle(
                              color: Color(0xFF32313A), fontSize: 16.0),
                        ),
                        Text(
                          supportGroup.facilityName,
                          style: const TextStyle(color: Color(0xFF999999)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  ElevatedButton(
                      onPressed: () async {
                        await backend.joinSupportGroup(supportGroup.id);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF58D68D),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text('Join'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
