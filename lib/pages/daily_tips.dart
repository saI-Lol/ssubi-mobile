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
        backgroundColor: Colors.blue[900],
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
                width: 100,
                height: 100,
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

/*class TipScreen extends StatelessWidget {
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
  
  }*/
