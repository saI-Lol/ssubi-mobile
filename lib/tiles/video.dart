import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:ssubi/models/video.dart';
import 'package:ssubi/utils/date_time.dart';
import 'package:video_player/video_player.dart';

class VideoTile extends StatefulWidget {
  final Video video;

  const VideoTile({super.key, required this.video});

  @override
  State<VideoTile> createState() => _VideoTileState();
}

class _VideoTileState extends State<VideoTile> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.networkUrl(Uri.parse(widget.video.url)),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 15),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFFF6F7FF),
        ),
        child: Column(
          children: [
            FlickVideoPlayer(
              flickManager: flickManager,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    widget.video.title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF32313A)),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.video.author,
                        style: const TextStyle(
                            fontSize: 14, color: Color(0xFF647AFF))),
                    Text(formatDate(widget.video.date, 'MMM dd, yyyy'),
                        style: const TextStyle(
                            fontSize: 14, color: Color(0xFF999999))),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
