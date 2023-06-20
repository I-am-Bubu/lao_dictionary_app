import 'package:flutter/material.dart';

class firstVerbListsPage extends StatelessWidget {
  final List<String> items = [
    'ກ',
    'ຂ',
    'ຄ',
    'ງ',
    'ຈ',
    'ສ',
    'ຊ',
    'ຍ',
    'ດ',
    'ຕ',
    'ຖ',
    'ທ',
    'ນ',
    'ບ',
    'ປ',
    'ຜ',
    'ຝ',
    'ພ',
    'ຟ',
    'ມ',
    'ຢ',
    'ຣ',
    'ລ',
    'ວ',
    'ຫ',
    'ອ',
    'ຮ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'ພະຍັນຊະນະເຄົ້າ',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1,
        padding: EdgeInsets.only(top: 5),
        children: List.generate(items.length, (index) {
          return GestureDetector(
            onTap: () {
              print('Tapped');
            },
            child: Container(
              width: 90,
              height: 90,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color.fromRGBO(138, 148, 225, 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  items[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}