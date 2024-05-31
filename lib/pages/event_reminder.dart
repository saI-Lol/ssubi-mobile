// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EventReminder extends StatelessWidget {
  const EventReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Crisis Hotlines"),
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.blue[100],
              child: Icon(
                Icons.help_outline,
                size: 40,
                color: Colors.blue,

              ),
            ),

            SizedBox(height: 10),
            Text(
              'aynthing',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors. grey,
              ),
            ),
          ],
        ),
      ),

    );

    
  }
}