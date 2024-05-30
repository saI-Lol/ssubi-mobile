// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/util/tab_bar_tile.dart';

class AllGroups extends StatefulWidget {
  const AllGroups({super.key});

  @override
  State<AllGroups> createState() => _AllGroupsState();
}

class _AllGroupsState extends State<AllGroups> {
// list of support groups
  List supportGroups = [
    ['Strong Minds Ug', 'Strong Minds Uganda'],
    ['Mindverse Official Group', 'Mindverse'],
    ['Serenity Circle', 'Mending Thoughts Ug'],
    ['Calm Minds Collective', 'Peacful Mind'],
    ['Peaceful Pathways', 'Kampala Serenity Center'],
    ['Dealing with Anxiety', 'Strong Minds Uganda'],
    ['Resilient Together', 'Phoenix Recovery Clinic'],
    ['Tranquil Minds Network', 'Tranquility Mental Wellness Center'],
    ['Stress Stops For Good', 'Mindverse'],
    ['Strength in Unity', 'Unity MindCare Facility'],
    ['Healing Hearts', 'Lighthouse Wellness Clinic'],
    ['Thrive Together Support', 'Heart to Heart'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // const keyword removed
        backgroundColor: Color(0xFFFCFEFF), // Bg color hexcode is #FCFEFF
        body: ListView.builder(
            itemCount: supportGroups.length,
            itemBuilder: (context, index) {
              return TabBarTile(
                // algorithm that modifies avatar color absed on index
                avatarColor:
                    index % 2 == 0 ? Color(0xFF647AFF) : Color(0xFFB0BCFF),
                groupName: supportGroups[index][0],
                createdBy: supportGroups[index][1],
              );
            }));
  }
}
