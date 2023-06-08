import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/widgets/carousel_widget.dart';
import 'package:lao_dictionary_app/widgets/horizontal_listview_widget.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).primaryColor,
        flexibleSpace: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
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
      body: Column(
        children: [
          Container(
            child: carouselWidget(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: horizontalListviewWidget(),
          ),
        ],
      ),
    );
  }
}
