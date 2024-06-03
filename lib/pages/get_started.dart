// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_application_1/pages/home.dart';

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
                    'lib/assets/3.png',
                    width: 200,
                    height: 200,
                  ),

                  Image.asset(
                    'lib/assets/2.png',
                    width: 100,
                    height:200,
                  ),
                
                ],
              ),
                SizedBox(height: 50),
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
              child: Text('Get Started'),
              onPressed: (){
                // navigate to the next page
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),
                ),
                );
              }, 
              ),
            
           ),
           Spacer(flex:1),
        
             
            ],
            
          ),
        

        ),
      ),
      


    );
  }
}