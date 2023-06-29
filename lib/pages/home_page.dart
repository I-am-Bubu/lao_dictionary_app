import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/pages/first_verb_lsits_page.dart';
import 'package:lao_dictionary_app/pages/second_verb_lists_page.dart';
import 'package:lao_dictionary_app/pages/third_verb_lists_page.dart';
import 'package:lao_dictionary_app/widgets/carousel/carousel_widget.dart';
import 'package:lao_dictionary_app/widgets/carousel/first_verbs_carousel.dart';
import 'package:lao_dictionary_app/widgets/carousel/second_verbs_carousel.dart';
import 'package:lao_dictionary_app/widgets/carousel/third_verbs_carousel.dart';

class homePage extends StatefulWidget {
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
            padding: const EdgeInsets.only(top: 45),
            child: Container(
              width: 300,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'ຄົ້ນຫາ...',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.only(left: 20),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: carouselWidget(),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'ພະຍັນຊະນະເຄົ້າ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => firstVerbListsPage(),
                      ),
                    );
                  },
                  child: Text("ເບິ່ງທັງໝົດ >>"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(66, 105, 206, 1.0)),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                  ),
                )
              ],
            ),
            Container(
              child: firstVerbsCarousel(),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'ພະຍັນຊະນະປະສົມ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => secondVerbListsPage(),
                      ),
                    );
                  },
                  child: Text("ເບິ່ງທັງໝົດ >>"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(66, 105, 206, 1.0)),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                  ),
                )
              ],
            ),
            Container(
              child: secondVerbsCarousel(),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'ພະຍັນຊະນະຄວບ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => thirdVerbListsPage(),
                      ),
                    );
                  },
                  child: Text("ເບິ່ງທັງໝົດ >>"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(66, 105, 206, 1.0)),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                  ),
                )
              ],
            ),
            Container(
              child: thirdVerbsCarousel(),
            ),
          ],
        ),
      ),
    );
  }
}
