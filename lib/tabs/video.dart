// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:frontend/util/video_card.dart';

class Video extends StatelessWidget {
  // List of videos
  List<Map<String, dynamic>> videos = [
    {
      "videoTitle":
          "Breaking the Silence: Understanding and Overcoming Anxiety",
      "videoAuthor": "Dr. Alisson Aparo",
      "videoDate": "2024-06-01",
      "videoThumbnail": const AssetImage('assets/images/hug.jpg'),
    },
    {
      "videoTitle": "Understanding Depression: Shedding Light on the Darkness",
      "videoAuthor": "Dr. Jane Smith",
      "videoDate": "2024-06-02",
      "videoThumbnail": const AssetImage('assets/images/holding_hands.jpg'),
    },
    {
      "videoTitle": "Coping with Stress: Strategies for a Balanced Mind",
      "videoAuthor": "Jeremy Ssebakijje",
      "videoDate": "2024-06-03",
      "videoThumbnail": const AssetImage('assets/images/hug.jpg'),
    },
    {
      "videoTitle":
          "The Power of Self-Compassion: Embracing Kindness Towards Ourselves",
      "videoAuthor": "The Mind Society",
      "videoDate": "2024-06-04",
      "videoThumbnail": const AssetImage('assets/images/holding_hands.jpg'),
    },
    {
      "videoTitle":
          "Navigating Relationships: Maintaining Mental Health in Interpersonal Dynamics",
      "videoAuthor": "Dr. Rosette Nandujja",
      "videoDate": "2024-06-05",
      "videoThumbnail": const AssetImage('assets/images/hug.jpg'),
    },
    {
      "videoTitle":
          "Mindfulness Meditation: Cultivating Presence for Mental Well-Being",
      "videoAuthor": "Dr. Kiyan Anthony",
      "videoDate": "2024-06-06",
      "videoThumbnail": const AssetImage('assets/images/holding_hands.jpg'),
    },
    {
      "videoTitle":
          "Breaking the Stigma: Addressing Mental Health in the Workplace",
      "videoAuthor": "Mental Health Uganda",
      "videoDate": "2024-06-07",
      "videoThumbnail": const AssetImage('assets/images/hug.jpg'),
    },
  ];

  Video({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFEFF),
      body: ListView.builder(
          itemCount: videos.length,
          itemBuilder: ((context, index) {
            final video = videos[index];
            return VideoCard(
                videoTitle: video['videoTitle'],
                videoAuthor: video['videoAuthor'],
                videoDate: video['videoDate'],
                videoThumbnail: video['videoThumbnail']);
          })),
    );
  }
}
