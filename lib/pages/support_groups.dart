// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/tabs/all_groups.dart';
import 'package:frontend/tabs/joined_groups.dart';

class SupportGroups extends StatelessWidget {
  SupportGroups({super.key});

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
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xFFFCFEFF),
          appBar: AppBar(
            backgroundColor: Color(0xFFFCFEFF),
            elevation: 0,
            title: Text('Support Groups',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Color(0xFF32313A),
                    fontWeight: FontWeight.w500)),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                TabBar(
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
                Expanded(
                  child: TabBarView(children: [
                    // First Tab
                    AllGroups(
                      itemCount_: supportGroups.length,
                      groupName_: supportGroups[0][0],
                      createdBy_: supportGroups[0][1],
                    ),

                    // Second Tab
                    JoinedGroups(),
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}
