import 'package:flutter/material.dart';
import 'package:ssubi/models/support_group.dart';
import 'package:ssubi/screens/support_group_events.dart';

class JoinedSupportGroup extends StatelessWidget {
  final SupportGroup supportGroup;
  final int index;
  const JoinedSupportGroup(
      {super.key, required this.supportGroup, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      GroupEvents(supportGroup: supportGroup)));
        },
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
                    const Row(
                      children: [
                        Icon(
                          Icons.check_outlined,
                          color: Color(0xFF32313A),
                        ),
                        SizedBox(width: 8.0),
                        Text('Joined')
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
