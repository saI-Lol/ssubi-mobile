// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class CrisisHotlines extends StatelessWidget {
  const CrisisHotlines({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Crisis Hotlines"),
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text("'Strong Minds Uganda', number: '0800 800 800'"),
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
            title: Text("'Strong Minds Uganda', number: '0800 800 800'"),
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
            title: Text("'Strong Minds Uganda', number: '0800 800 800'"),
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