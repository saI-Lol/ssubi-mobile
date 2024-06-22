import 'package:flutter/material.dart';
import 'package:ssubi/models/blog.dart';
import 'package:ssubi/utils/date_time.dart';

class BlogTile extends StatelessWidget {
  final Blog blog;

  const BlogTile({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/blog', arguments: blog);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFFF6F7FF),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  blog.title,
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
                  Text(blog.author,
                      style: const TextStyle(
                          fontSize: 14, color: Color(0xFF647AFF))),
                  Text(formatDate(blog.date, 'MMM dd, yyyy'),
                      style: const TextStyle(
                          fontSize: 14, color: Color(0xFF999999))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
