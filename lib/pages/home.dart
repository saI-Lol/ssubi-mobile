// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
        child: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi Greg',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),

                Text('Dec 28, 2024',
                style: TextStyle(color: Colors.black),
                ),

                  ],
                ),
                Icon(
              Icons.account_circle,
              size:40,
            ),  
                
              ],
            ),
            SizedBox(height: 40.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset('lib/assets/4.png',
                  width: 100,
                  height: 100,
                  
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Crisis Hotlines',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Contact emergence services for any sistuation. These lines are available 24/7',
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            
                          ),
                      onPressed: () {
                      // handle button action
                    },
                     child: Text(
                      'Reach out now!', 
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                     ),
                      ],
                    ),
                    ),
                    
                  
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        /*Image.asset(
                          'lib/assets/'
                        ),*/
                        SizedBox(height:16.0),
                        Text(
                          'Daily Tip',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Quick insights for a healthier mind.',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 249, 219, 229),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                       //
                       // Image.asset(),
                       SizedBox(height: 8.0),
                       Text(
                        'Event Reminder',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                       ),
                       Text(
                        'timely nudges for your well-being journey.',
                        textAlign: TextAlign.center,
                       ),
                      ],
                    ),
                  ),
                  ),
              ],
            ),
            SizedBox(height: 40.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Suubi',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        Text(
                          'Discover the purpose driving our  dedication to mental wellness.',
                        ),
                      
                        
                        
                      
                      ],
                      
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Image.asset('lib/assets/5.png',
                        width: 100,
                        height: 100,
                        ),

                ],
              ),
            ),

            
          ],
        ),
        

        
        ),
        


      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),

          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
            ),

          //article
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Resources',
            ),  
          
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            ),
        ],

        
        ),











      /*appBar: AppBar(
        title: Text('Hi, Greg'),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.account_circle),
          ),
        ],
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
                'dec 28, 2024',
                style: TextStyle( color: Colors.grey),
              ),

              SizedBox(height: 20),
              Card(
                color: Colors.blue[100],
                child: ListTile(
                  leading: Icon(Icons.support_agent,color: Colors.blue),
                  title: Text('crisis Hotlines'),
                  subtitle: Text('Contact emergency services for any situation. These are available 24/7',
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text('Reach out now!'),
                  ),
                  ),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.green[100],
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              'Daily Tip',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height:8),
                            Text(
                              'Quick insights for a healthier mind.',
                              textAlign: TextAlign.center,
                            ),
                          ]
                        ),

                      ),
                    ),
                  ),

                  SizedBox(width: 16),
                  Expanded(
                    child: Card(
                      color: Colors.orange[100],
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              'Event Reminder',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 8),
                            Text(
                              'Timely nudges for your well-being journey.',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),

                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16.0),
              Card(
                color: Colors. lightBlue[100],
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children:[
                      Icon(Icons.info, color: Colors.blue),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About Suubi',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                            SizedBox(height: 8.0),
                            Text('Discover the purpose driving our dedication to mental wellness.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),

          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
            ),

          //article
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Resources',
            ),  
          
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            ),


        ],
        ),*/

    );
  }
}