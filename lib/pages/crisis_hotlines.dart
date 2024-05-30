import 'package:flutter/material.dart';
import 'package:frontend/util/hotline_tile.dart';

class CrisisHotlines extends StatefulWidget {
  const CrisisHotlines({super.key});

  @override
  State<CrisisHotlines> createState() => _CrisisHotlinesState();
}

class _CrisisHotlinesState extends State<CrisisHotlines> {
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
      body: ListView(
        children: [
          // Hotline Tiles
          HotlineTile(
            hotlineName: 'Strong Minds Uganda',
            hotlineNumber: '0800 800 800',
          ),
        ],
      ),
    );
  }
}
