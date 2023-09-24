import 'package:activities_time_tracker/features/add_activity/add_activity_page.dart';
import 'package:activities_time_tracker/features/current_activities/current_activities_screen.dart';
import 'package:activities_time_tracker/features/home/home_screen.dart';
import 'package:activities_time_tracker/features/main_page/widgets/app_bar.dart';
import 'package:activities_time_tracker/utils/colors.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: const MyAppBar(),
      body: SafeArea(
        child: IndexedStack(
          index: bottomBarIndex,
          children: const [
            HomeScreen(),
            CurrentActivitiesScreen(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: accentColor,
        foregroundColor: principalColor,
        child: const Icon(Icons.add, size: 34),
        onPressed: () {
          Navigator.pushNamed(context, AddActivityPage.routeName);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const <IconData>[
          Icons.home,
          Icons.assignment,
          Icons.assignment_turned_in,
          Icons.settings,
        ],
        activeIndex: bottomBarIndex,
        gapLocation: GapLocation.center,
        backgroundColor: principalColor,
        inactiveColor: Colors.white,
        activeColor: accentColorLight,
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        blurEffect: false,
        splashRadius: 0,
        onTap: (index) {
          setState(() {
            bottomBarIndex = index;
          });
        },
      ),
    );
  }
}
