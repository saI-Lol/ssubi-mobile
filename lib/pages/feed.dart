import 'package:flutter/material.dart';
import 'package:frontend/tabs/blog.dart';
import 'package:frontend/tabs/video.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: const Color(0xFFFCFEFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFCFEFF),
          elevation: 0,
          title: const Text('Your Feed',
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
                      text: 'Blog',
                    ),
                    Tab(
                      text: 'Video',
                    ),
                  ]),
              // Tab bar view to display content for each tab
              Expanded(
                child: TabBarView(children: [
                  // First Tab: Blogs
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Blog(),
                  ),
                  // Second Tab: Joined Groups
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Video(),
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
