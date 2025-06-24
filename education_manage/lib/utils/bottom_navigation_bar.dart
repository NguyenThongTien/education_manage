import 'package:education_manage/screens/home/home_screen.dart';
import 'package:education_manage/screens/profile_screen.dart/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int pageIndex = 0;
  final pages = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: pageIndex,
          selectedItemColor: const Color(0xff3a546f),
          unselectedItemColor: Colors.grey.shade500,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper, size: 30), label: 'News'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications, size: 30),
                label: 'Notifications'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30),
              label: 'Account',
            ),
          ]),
    );
  }
}
