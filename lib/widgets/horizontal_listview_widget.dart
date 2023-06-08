import 'package:flutter/material.dart';

class horizontalListviewWidget extends StatelessWidget {
  final List<String> items = [
    
    
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
                    child: Text('ພະຍັນຊະນະເຄົ້າ'),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 110,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(138, 148, 225, 1.0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        items[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
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
