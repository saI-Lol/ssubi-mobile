// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EventReminder extends StatelessWidget {
  const EventReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Reminder",
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[500],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // handle back button press

          },
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset('lib/assets/6.png',
            width: 200,
            height: 200,
            ),

    

            SizedBox(height: 20),  // space between the image and text
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