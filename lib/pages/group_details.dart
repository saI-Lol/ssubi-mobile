import 'package:flutter/material.dart';

class GroupDetails extends StatelessWidget {
  final String groupName;
  final String createdBy;

  const GroupDetails(
      {super.key, required this.groupName, required this.createdBy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundColor: const Color(0xFF647AFF),
                        child: Text(
                          groupName[0].toUpperCase(),
                          style: const TextStyle(
                              fontSize: 72.0,
                              color: Color(0xFFFCFEFF),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),

                    // Group Name
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        groupName,
                        style: const TextStyle(
                            color: Color(0xFF32313A),
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),

                    // Number of members
                    const Text(
                      '200 Members',
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),

              // Divider
              const Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: Divider(
                  color: Color(0xFFAAAAAA),
                  thickness: 0.0,
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      'Strong Minds Ug is a mental health support group dedicated to fostering resilience and well-being in Uganda. Led by Strong Minds Uganda, it offers a nurturing community, workshops, and resources to aid individuals in coping with mental health challenges.',
                      style: TextStyle(
                          color: Color(0xFF32313A),
                          fontSize: 14.0,
                          height: 1.4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      'Created by: $createdBy',
                      style: const TextStyle(
                          color: Color(0xFF666666), fontSize: 12.0),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      'Created on: 28 Dec, 2024',
                      style: TextStyle(
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontSize: 12.0),
                    ),
                  ),

                  // Divider
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Divider(
                      color: Color(0xFFAAAAAA),
                      thickness: 0.0,
                    ),
                  ),

                  // Leave Group
                  GestureDetector(
                    // method for leaving the support group
                    onTap: () {},

                    child: const Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Color(0xFFF5564A),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Leave Group',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFFF5564A)),
                        ),
                      ],
                    ),
                  ),

                  // Divider
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Divider(
                      color: Color(0xFFAAAAAA),
                      thickness: 0.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
