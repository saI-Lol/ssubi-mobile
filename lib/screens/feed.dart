import 'package:flutter/material.dart';
import 'package:ssubi/main.dart';
import 'package:ssubi/models/blog.dart';
import 'package:ssubi/models/video.dart';
import 'package:ssubi/tiles/blog.dart';
import 'package:ssubi/tiles/video.dart';
import 'package:video_player/video_player.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  List<VideoPlayerController> videoControllers = [];
  late Future<List<Video>> videosFuture;
  late Future<List<Blog>> blogsFuture;

  @override
  void initState() {
    super.initState();
    videosFuture = backend.getVideos();
    blogsFuture = backend.getBlogs();
  }

  @override
  void dispose() {
    for (var controller in videoControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFFCFEFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFCFEFF),
          foregroundColor: const Color(0xFF32313A),
          elevation: 0,
          title: const Text('Feed',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
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
              Expanded(
                child: TabBarView(children: [
                  Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: FutureBuilder(
                          future: blogsFuture,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator(
                                color: Color(0xFF647AFF),
                              ));
                            } else if (snapshot.hasError) {
                              return const Center(
                                  child: Text(
                                      'Error occurred while loading blogs'));
                            } else if (!snapshot.hasData ||
                                snapshot.data!.isEmpty) {
                              return const Center(
                                  child: Text('No blogs available'));
                            } else {
                              final blogs = snapshot.data!;
                              return ListView.builder(
                                itemCount: blogs.length,
                                itemBuilder: (context, index) {
                                  return BlogTile(blog: blogs[index]);
                                },
                              );
                            }
                          })),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: FutureBuilder(
                          future: videosFuture,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator(
                                color: Color(0xFF647AFF),
                              ));
                            } else if (snapshot.hasError) {
                              return const Center(
                                  child: Text(
                                      'Error occurred while loading videos'));
                            } else if (!snapshot.hasData ||
                                snapshot.data!.isEmpty) {
                              return const Center(
                                  child: Text('No videos available'));
                            } else {
                              final videos = snapshot.data!;
                              return ListView.builder(
                                itemCount: videos.length,
                                itemBuilder: (context, index) {
                                  return VideoTile(video: videos[index]);
                                },
                              );
                            }
                          })),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
