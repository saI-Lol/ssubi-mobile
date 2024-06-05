import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String videoTitle;
  final String videoAuthor;
  final String videoDate;
  final ImageProvider videoThumbnail;

  const VideoCard(
      {super.key,
      required this.videoTitle,
      required this.videoAuthor,
      required this.videoDate,
      required this.videoThumbnail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFFF6F7FF),
        ),
        child: Column(
          children: [
            // Video thumbnail
            AspectRatio(
              aspectRatio: 5 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image(
                  fit: BoxFit.cover,
                  image: videoThumbnail,
                ),
              ),
            ),
            // Video title
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                videoTitle,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF32313A)),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            // Video Author(s) and Date Published
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Author
                Text(videoAuthor,
                    style: const TextStyle(
                        fontSize: 14, color: Color(0xFF647AFF))),
                // Date Published
                Text(videoDate,
                    style: const TextStyle(
                        fontSize: 14, color: Color(0xFF999999))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
