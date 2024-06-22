import 'package:flutter/material.dart';
import 'package:ssubi/models/blog.dart';
import 'package:ssubi/utils/date_time.dart';

class BlogDetails extends StatefulWidget {
  const BlogDetails({super.key});

  @override
  State<BlogDetails> createState() => _BlogDetailsState();
}

class _BlogDetailsState extends State<BlogDetails> {
  @override
  Widget build(BuildContext context) {
    final blog = ModalRoute.of(context)!.settings.arguments as Blog;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFCFEFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFCFEFF),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                blog.title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF32313A)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0XFFF6F7FF),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      blog.author,
                      style: const TextStyle(
                          color: Color(0xFF647AFF),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      formatDate(blog.date, 'MMM dd, yyyy'),
                      style: const TextStyle(color: Color(0xFF999999)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                blog.content,
                style:
                    const TextStyle(color: Color(0xFF666666), fontSize: 16.0),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
