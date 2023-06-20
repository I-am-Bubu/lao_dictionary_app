import 'package:flutter/material.dart';

import 'package:lao_dictionary_app/widgets/carousel_widget.dart';
import 'package:lao_dictionary_app/widgets/first_verbs_widget.dart';
import 'package:lao_dictionary_app/widgets/second_verbs_widget.dart';
import 'package:lao_dictionary_app/widgets/third_verbs_widget.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      
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
                  onPressed: () {},
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
              child: firstVerbsWidget(),
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
                  onPressed: () {},
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
              child: secondVerbsWidget(),
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
                  onPressed: () {},
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
              child: thirdVerbsWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
