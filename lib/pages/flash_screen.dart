import 'package:flutter/material.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 91, 161),
      body: Center(
        child: Image(
          image: AssetImage('lib/assets/1.png'),
          height: 200,
          width: 200,
          ),

      ),
      
    );
  }
}