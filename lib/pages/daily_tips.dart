// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DailyTips extends StatelessWidget {
  const DailyTips({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Today's Tips"),
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: Icon(Icons.arrow_back),

      

      ),
      body: TipScreen(),
    );
  }
}

class TipScreen extends StatelessWidget {
  const TipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lightbulb_outline,
              size:100,
              color:Colors.blue,
            ),
            SizedBox(height:20),
            Text(
              'anything',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            
            SizedBox(height: 10),
            Text(
              'anything',
              style: TextStyle(
                fontSize: 16),
                textAlign: TextAlign.center,   
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                //handle copy to clipboard
              },
              child: Text('copy to Clipboard'),
            ),



          ]
        ),
      ),

    );
  }
  
  }
