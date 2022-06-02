import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:doctofind/screens/appointments_list.dart';

import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int size = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            AppointmentsPage(),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        animationDuration: const Duration(milliseconds: 250),
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: const Text(
                'Appt.',
                style: TextStyle(color: Colors.green),
              ),
              icon: const Icon(
                LineIcons.calendarCheck,
                size: 30,
                color: Colors.green,
              )),
          BottomNavyBarItem(
              title: const Text(
                'Reviews',
                style: TextStyle(color: Colors.green),
              ),
              icon: const Icon(
                LineIcons.commentsAlt,
                size: 30,
                color: Colors.green,
              )),
          BottomNavyBarItem(
              title: const Text(
                'Account',
                style: TextStyle(color: Colors.green),
              ),
              icon: const Icon(
                LineIcons.userEdit,
                size: 30,
                color: Colors.green,
              )),
        ],
      ),
    );
  }
}
