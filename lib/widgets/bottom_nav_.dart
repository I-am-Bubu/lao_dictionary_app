import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/pages/first_verbs_page.dart';
import 'package:lao_dictionary_app/pages/home_page.dart';
import 'package:lao_dictionary_app/pages/profile_page.dart';
import 'package:lao_dictionary_app/pages/second_verbs_page.dart';
import 'package:lao_dictionary_app/pages/third_verb_page.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    homePage(),
    firstVerbsPage(),
    secondVerbsPage(),
    thirdVerbsPage(),
    profilePage()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ໜ້າຫຼັກ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: 'ເຄົ້າ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.font_download),
            label: 'ປະສົມ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields_outlined),
            label: 'ຄວບ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'ກ່ຽວກັບພວກເຮົາ',
          ),
        ],
      ),
    );
  }
}
