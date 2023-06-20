import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/pages/first_verb_lsits_page.dart';
import 'package:lao_dictionary_app/pages/home_page.dart';
import 'package:lao_dictionary_app/pages/profile_page.dart';
import 'package:lao_dictionary_app/pages/second_verb_lists_page.dart';
import 'package:lao_dictionary_app/pages/third_verb_lists_page.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    homePage(),
    firstVerbListsPage(),
    secondVerbListsPage(),
    thirdVerbListsPage(),
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
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).primaryColor,
        flexibleSpace: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Container(
              width: 300,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
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
