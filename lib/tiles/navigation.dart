import 'package:flutter/material.dart';
import 'package:ssubi/main.dart';
import 'package:ssubi/screens/facilities.dart';
import 'package:ssubi/screens/feed.dart';
import 'package:ssubi/screens/home.dart';
import 'package:ssubi/screens/support_groups.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Home(
      user: currentUser,
    ),
    const SupportGroups(),
    const Facilities(),
    const Feed(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xFF647AFF),
          unselectedItemColor: const Color(0xFF999999),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Support Groups',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Facilities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Feed',
            ),
          ],
        ));
  }
}
