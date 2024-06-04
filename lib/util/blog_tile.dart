import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  final String blogTitle;
  final String blogAuthor;
  final String blogDate;

  const BlogTile(
      {super.key,
      required this.blogTitle,
      required this.blogAuthor,
      required this.blogDate});

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
            // Blog title
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                blogTitle,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF32313A)),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            // Blog Author(s) and Date Published
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Author
                Text(blogAuthor,
                    style: const TextStyle(
                        fontSize: 14, color: Color(0xFF647AFF))),
                // Date Published
                Text(blogDate,
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
