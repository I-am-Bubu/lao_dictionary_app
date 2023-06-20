import 'package:flutter/material.dart';

class firstVerbsWidget extends StatelessWidget {
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
    return Container(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  Container(
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
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
