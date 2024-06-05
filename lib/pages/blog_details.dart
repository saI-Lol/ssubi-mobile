// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class BlogDetails extends StatelessWidget {
  final String blogTitle;
  final String blogAuthor;
  final String blogDate;
  final String blogContent;

  const BlogDetails({
    super.key,
    required this.blogTitle,
    required this.blogAuthor,
    required this.blogDate,
    required this.blogContent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFEFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFCFEFF),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
        child: ListView(children: [
          // Blog Title
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              blogTitle,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF32313A)),
            ),
          ),
          // Row with author and date
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0XFFF6F7FF),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    blogAuthor,
                    style: TextStyle(
                        color: Color(0xFF647AFF), fontWeight: FontWeight.w500),
                  ),
                  Text(
                    blogDate,
                    style: TextStyle(color: Color(0xFF999999)),
                  ),
                ],
              ),
            ),
          ),

          // Blog Content
          Text(
            blogContent + '\n\n\n\n\n',
            style: TextStyle(color: Color(0xFF666666), fontSize: 16.0),
          ),
        ]),
      ),
    );
  }
}
