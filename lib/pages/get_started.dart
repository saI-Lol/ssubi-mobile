// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';



class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Image.asset(
                'assets/left_hand.png',
                width: 50,
                height: 50,
              ),
              Image.asset(
                'assets/right_hand.png',
                width: 50,
                height: 50,

              ),

                ],
              ),
                SizedBox(height: 20),
          Text(
            'Welcome to Subbi Mental Wellness!',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'A project dedicated to spreading mental health awareness and increasing levels in our community.',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
           Spacer(flex: 2),
           Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom() ,
            ),
            
           ),
        
             
            ],
            
          ),
        

        ),
      ),
      


    );
  }
}