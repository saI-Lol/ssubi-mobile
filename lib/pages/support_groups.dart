// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/tabs/all_groups.dart';

class SupportGroups extends StatelessWidget {
  const SupportGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xFFFCFEFF),
          appBar: AppBar(
            elevation: 0,
            title: Text('Support Groups',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Color(0xFF32313A),
                    fontWeight: FontWeight.w500)),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                    AllGroups(),

                    // Second Tab
                    Scaffold(
                      body: Text('Joined Support Groups'),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}
