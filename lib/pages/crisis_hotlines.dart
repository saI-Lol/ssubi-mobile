// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class CrisisHotlines extends StatelessWidget {
  const CrisisHotlines({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Crisis Hotlines",
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


      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text("'Strong Minds Uganda','0800 800 800'"),
            trailing: ElevatedButton(
              onPressed: () {
                // handle call action
              },
              child: Text('call'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                
              ),
            ),
          ),
          
             ListTile(
            leading: CircleAvatar(),
            title: Text("'Strong Minds Uganda','0800 800 800'"),
            
            trailing: ElevatedButton(
              onPressed: () {
                // handle call action
              },
              child: Text('call'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                
                
              ),
              
                
              
            ),
          ),

             ListTile(
            leading: CircleAvatar(),
            title: Text("'Strong Minds Uganda','0800 800 800'"),
            trailing: ElevatedButton(
              onPressed: () {
                // handle call action
              },
              child: Text('call'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
          ),

        ],
      ),

    );
  }
}