import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('About Suubi'),
            backgroundColor: Colors.blue[500],
            foregroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFF6F7FF),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            'What is Suubi',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        Text(loremIpsum(paragraphs: 2, words: 50),
                            style: const TextStyle(fontSize: 14.0)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFF6F7FF),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            'The objective of Suubi',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        Text(loremIpsum(paragraphs: 2, words: 50),
                            style: const TextStyle(fontSize: 14.0)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFF6F7FF),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            'The Team Behind Suubi',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        Text(loremIpsum(paragraphs: 1, words: 30),
                            style: const TextStyle(fontSize: 14.0)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFF6F7FF),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            'Credit',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        Text(loremIpsum(paragraphs: 1, words: 20),
                            style: const TextStyle(fontSize: 14.0)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
