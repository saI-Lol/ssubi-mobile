// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DailyTips extends StatelessWidget {
  const DailyTips({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Today's Tips",
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
        /*child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 16.0),
          ),*/
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Image.asset('lib/assets/7.png',
                width: 200,
                height: 200,
              ),

              SizedBox(height: 20),
              Text(
                ' lorem ipsum dolor sit amet',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),
              Text(
                ' lorem ipsum dolor sit amet',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {

                },
                child: Text('Copy to clipboard'),
              ),
            ],
          ),
      ),
      
    );
  }
}


