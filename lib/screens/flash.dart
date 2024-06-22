import 'package:flutter/material.dart';

class Flash extends StatelessWidget {
  const Flash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 91, 161),
      body: Center(
        child: Image(
          image: AssetImage('assets/icon.png'),
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
