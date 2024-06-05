// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:frontend/pages/group_events.dart';

class SupportGroups extends StatefulWidget {
  const SupportGroups({super.key});

  @override
  _SupportGroupsState createState() => _SupportGroupsState();
}

// State for SupportGroups widget
class _SupportGroupsState extends State<SupportGroups> {
  // List of support groups with join status
  List<Map<String, dynamic>> supportGroups = [
    {
      'groupName': 'Strong Minds Ug',
      'createdBy': 'Strong Minds Uganda',
      'description':
          'Strong Minds Ug is a supportive community dedicated to promoting mental health awareness and providing resources for those in need. Join us to share your journey, gain insights from experts, and connect with others who understand.',
      'dateCreated': '2023-05-15',
      'isJoined': false
    },
    {
      'groupName': 'Mindverse Official Group',
      'createdBy': 'Mindverse',
      'description':
          'Welcome to the official support group for Mindverse members! Here, you can engage in discussions about mental health, participate in events, and access exclusive resources to support your mental well-being.',
      'dateCreated': '2023-07-22',
      'isJoined': false
    },
    {
      'groupName': 'Serenity Circle',
      'createdBy': 'Mending Thoughts Ug',
      'description':
          'Join the Serenity Circle to find peace and support on your mental health journey. Our community offers a safe space for sharing experiences, receiving encouragement, and accessing helpful resources.',
      'dateCreated': '2023-04-10',
      'isJoined': false
    },
    {
      'groupName': 'Calm Minds Collective',
      'createdBy': 'Peacful Mind',
      'description':
          'The Calm Minds Collective is a group dedicated to promoting mindfulness and relaxation techniques to achieve inner peace. Join us for guided meditations, yoga sessions, and supportive discussions.',
      'dateCreated': '2023-08-05',
      'isJoined': false
    },
    {
      'groupName': 'Peaceful Pathways',
      'createdBy': 'Kampala Serenity Center',
      'description':
          'Peaceful Pathways is your path to serenity and well-being. Our supportive community offers guidance, resources, and encouragement for navigating life\'s challenges. Join us to find peace and support.',
      'dateCreated': '2023-06-18',
      'isJoined': false
    },
    {
      'groupName': 'Dealing with Anxiety',
      'createdBy': 'Strong Minds Uganda',
      'description':
          'Join our community for support and strategies for managing anxiety. Together, we\'ll explore coping mechanisms, share experiences, and provide encouragement to help each other through difficult times.',
      'dateCreated': '2023-09-02',
      'isJoined': false
    },
    {
      'groupName': 'Resilient Together',
      'createdBy': 'Phoenix Recovery Clinic',
      'description':
          'Resilient Together is a community of resilience and strength. Join us as we support each other in overcoming challenges, building resilience, and finding hope for the future. Together, we are stronger.',
      'dateCreated': '2023-08-21',
      'isJoined': false
    },
    {
      'groupName': 'Tranquil Minds Network',
      'createdBy': 'Tranquility Mental Wellness Center',
      'description':
          'Welcome to Tranquil Minds Network, a community dedicated to promoting mental wellness and providing support for those in need. Join us for resources, discussions, and a supportive network of peers.',
      'dateCreated': '2023-10-09',
      'isJoined': false
    },
    {
      'groupName': 'Stress Stops For Good',
      'createdBy': 'Mindverse',
      'description':
          'Say goodbye to stress and hello to a happier, healthier you with Stress Stops For Good. Join our community for strategies, tips, and support in managing stress effectively and improving your well-being.',
      'dateCreated': '2023-11-15',
      'isJoined': false
    },
    {
      'groupName': 'Strength in Unity',
      'createdBy': 'Unity MindCare Facility',
      'description':
          'Strength in Unity is a community where we come together to support each other on our mental health journeys. Join us as we share experiences, offer encouragement, and build resilience together.',
      'dateCreated': '2023-10-30',
      'isJoined': false
    },
    {
      'groupName': 'Healing Hearts',
      'createdBy': 'Lighthouse Wellness Clinic',
      'description':
          'Healing Hearts is a supportive community for those seeking healing and emotional well-being. Join us for resources, discussions, and encouragement as we journey towards healing together.',
      'dateCreated': '2023-12-07',
      'isJoined': false
    },
    {
      'groupName': 'Thrive Together Support',
      'createdBy': 'Heart to Heart',
      'description':
          'Thrive Together Support is a community dedicated to empowering individuals to thrive in their mental health journey. Join us for support, resources, and encouragement as we thrive together.',
      'dateCreated': '2024-01-12',
      'isJoined': false
    },
  ];

  // Method to toggle the join status of a group
  void toggleJoin(int index) {
    setState(() {
      supportGroups[index]['isJoined'] = !supportGroups[index]['isJoined'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: const Color(0xFFFCFEFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFCFEFF),
          elevation: 0,
          title: const Text('Support Groups',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xFF32313A),
                  fontWeight: FontWeight.w500)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              // Tab bar for switching between All Groups and Joined Groups
              const TabBar(
                  indicatorColor: Color(0xFF647AFF),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Color(0xFF647AFF),
                  unselectedLabelColor: Color(0xFF999999),
                  labelStyle: TextStyle(fontSize: 16.0),
                  tabs: [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Joined',
                    ),
                  ]),
              // Tab bar view to display content for each tab
              Expanded(
                child: TabBarView(children: [
                  // First Tab: All Groups
                  AllGroups(
                    supportGroups: supportGroups,
                    toggleJoin: toggleJoin,
                  ),
                  // Second Tab: Joined Groups
                  JoinedGroups(
                    supportGroups: supportGroups
                        .where((group) => group['isJoined'])
                        .toList(),
                    toggleJoin: toggleJoin,
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Widget to display all support groups
class AllGroups extends StatelessWidget {
  final List<Map<String, dynamic>> supportGroups;
  final Function(int) toggleJoin;

  const AllGroups(
      {super.key, required this.supportGroups, required this.toggleJoin});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: supportGroups.length, // Number of items in the list
      itemBuilder: (context, index) {
        final group = supportGroups[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GroupEvents(
                    groupName: group['groupName'],
                    createdBy: group['createdBy'],
                  ),
                ),
              );
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
                  // Expanded to take available space
                  Expanded(
                    child: Row(
                      children: [
                        // Circle avatar with groupName initial
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: index % 2 == 0
                              ? const Color(0xFF647AFF)
                              : const Color(0xFFB0BCFF),
                          child: Text(
                            group['groupName'][0].toUpperCase(),
                            style: const TextStyle(
                                fontSize: 28.0,
                                color: Color(0xFFFCFEFF),
                                fontWeight: FontWeight.w300),
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
                                group['groupName'],
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: const TextStyle(
                                    color: Color(0xFF32313A), fontSize: 16.0),
                              ),
                              Text(
                                group['createdBy'],
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style:
                                    const TextStyle(color: Color(0xFF999999)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 8.0),

                  // Button
                  SizedBox(
                    width: 64,
                    child: AspectRatio(
                      aspectRatio: 2,
                      child: TextButton(
                        onPressed: () => toggleJoin(index),
                        style: TextButton.styleFrom(
                            backgroundColor: group['isJoined']
                                ? Colors.transparent
                                : const Color(0xFF58D68D),
                            foregroundColor: group['isJoined']
                                ? const Color(0xFFF5564A)
                                : const Color(0xFFFCFEFF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6))),
                        child: Text(
                          group['isJoined'] ? 'Leave' : 'Join',
                          style: const TextStyle(fontSize: 14.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// Widget to display joined support groups
class JoinedGroups extends StatelessWidget {
  final List<Map<String, dynamic>> supportGroups;
  final Function(int) toggleJoin;

  const JoinedGroups(
      {super.key, required this.supportGroups, required this.toggleJoin});

  @override
  Widget build(BuildContext context) {
    if (supportGroups.isEmpty) {
      return const Center(
        child: Text('No joined groups.'),
      );
    }
    return ListView.builder(
      itemCount: supportGroups.length,
      itemBuilder: (context, index) {
        final group = supportGroups[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GroupEvents(
                    groupName: group['groupName'],
                    createdBy: group['createdBy'],
                  ),
                ),
              );
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
                  // Expanded to take available space
                  Expanded(
                    child: Row(
                      children: [
                        // Circle avatar with groupName initial
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: index % 2 == 0
                              ? const Color(0xFF647AFF)
                              : const Color(0xFFB0BCFF),
                          child: Text(
                            group['groupName'][0].toUpperCase(),
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
                                group['groupName'],
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: const TextStyle(
                                    color: Color(0xFF32313A), fontSize: 16.0),
                              ),
                              Text(
                                group['createdBy'],
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style:
                                    const TextStyle(color: Color(0xFF999999)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 8.0),

                  // Button
                  SizedBox(
                    width: 64,
                    child: AspectRatio(
                      aspectRatio: 2,
                      child: TextButton(
                        onPressed: () => toggleJoin(index),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            foregroundColor: const Color(0xFFF5564A),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6))),
                        child: const Text(
                          'Leave',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
