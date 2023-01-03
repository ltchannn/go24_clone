import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go24_app/models/Go24_branches.dart';
import 'Classes_page.dart';
import 'Dashboard_page.dart';
import 'FindClubs_page.dart';
import 'Profile_page.dart';

class BottomNavBarScreen extends StatelessWidget {
  final Branch branch;
  const BottomNavBarScreen({super.key, required this.branch});

  @override

  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        onTap: (index) {},
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Find Clubs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_sharp),
            label: 'Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => DashboardScreen(branch: branch,),
            );
          case 1:
            return CupertinoTabView(
              builder: (context) => FindClubsScreen(),
            );
          case 2:
            return CupertinoTabView(
              builder: (context) => ClassesScreen(),
            );
          case 3:
          default:
            return CupertinoTabView(
              builder: (context) => ProfileScreen(),
            );
        }
      },
    );
  }
}
