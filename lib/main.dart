import 'package:flutter/material.dart';
import 'package:ssubi/models/user.dart';
import 'package:ssubi/screens/about.dart';
import 'package:ssubi/screens/blog.dart';
import 'package:ssubi/screens/crisis_hotlines.dart';
import 'package:ssubi/screens/facilities.dart';
import 'package:ssubi/screens/facility_details.dart';
import 'package:ssubi/screens/feed.dart';
import 'package:ssubi/screens/flash.dart';
import 'package:ssubi/screens/get_started.dart';
import 'package:ssubi/screens/home.dart';
import 'package:ssubi/screens/sign_in.dart';
import 'package:ssubi/screens/sign_up.dart';
import 'package:ssubi/screens/support_group_details.dart';
import 'package:ssubi/screens/support_groups.dart';
import 'package:ssubi/services/backend.dart';
import 'package:ssubi/tiles/navigation.dart';

void main() {
  runApp(const MyApp());
}

BackendService backend = BackendService();

User currentUser = User(
    firstName: 'John',
    lastName: 'Doe',
    email: 'johndoe@gmail.com',
    phoneNumber: '1234567890');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ssubi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/home': (context) => Home(
              user: currentUser,
            ),
        '/flash': (context) => const Flash(),
        '/sign_in': (context) => const SignIn(),
        '/get_started': (context) => const GetStarted(),
        '/sign_up': (context) => const SignUp(),
        '/hotlines': (context) => const CrisisHotlines(),
        '/about': (context) => const About(),
        '/feed': (context) => const Feed(),
        '/blog': (context) => const BlogDetails(),
        '/support_groups': (context) => const SupportGroups(),
        '/support_group_details': (context) => const GroupDetails(),
        '/facility': (context) => const FacilityDetails(),
        '/facilities': (context) => const Facilities(),
      },
      home: const Navigation(),
    );
  }
}
