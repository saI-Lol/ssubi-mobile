// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend/util/hotline_tile.dart';

class CrisisHotlines extends StatefulWidget {
  const CrisisHotlines({super.key});

  @override
  State<CrisisHotlines> createState() => _CrisisHotlinesState();
}

class _CrisisHotlinesState extends State<CrisisHotlines> {
  // list of hotline tiles
  List hotlines = [
    ['Strong Minds Uganda', '0800 800 800'],
    ['Mindverse', '0600 600 600'],
    ['Mending Thoughts Ug', '0500 500 500'],
    ['Peaceful Mind', '0300 300 300']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // const keyword removed
        backgroundColor: Color(0xFFFCFEFF), // Bg color hexcode is #FCFEFF
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF647AFF),
          title: Text(
            'Crisis Hotlines',
            style: TextStyle(color: Color(0xFFFCFEFF)),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFFCFEFF),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView.builder(
            itemCount: hotlines.length,
            itemBuilder: (context, index) {
              return HotlineTile(
                // algorithm that modifies avatar color absed on index
                avatarColor:
                    index % 2 == 0 ? Color(0xFF647AFF) : Color(0xFFB0BCFF),
                tileName: hotlines[index][0],
                tileHotline: hotlines[index][1],
              );
            }));
  }
}
