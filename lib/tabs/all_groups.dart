// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/util/tab_bar_tile.dart';

class AllGroups extends StatefulWidget {
  // variables to hold data for support groups
  final String groupName_;
  final String createdBy_;
  final int itemCount_;

  const AllGroups({
    required this.groupName_,
    required this.createdBy_,
    required this.itemCount_,
  });

  @override
  State<AllGroups> createState() => _AllGroupsState();
}

class _AllGroupsState extends State<AllGroups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFEFF), // Bg color hexcode is #FCFEFF
      body: ListView.builder(
        itemCount: widget.itemCount_, // Accessing widget properties
        itemBuilder: (context, index) {
          return TabBarTile(
            // algorithm that modifies avatar color based on index
            avatarColor: index % 2 == 0 ? Color(0xFF647AFF) : Color(0xFFB0BCFF),
            groupName: widget.groupName_, // Accessing widget properties
            createdBy: widget.createdBy_, // Accessing widget properties
          );
        },
      ),
    );
  }
}
