import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/data/second_verb.dart';
import 'package:lao_dictionary_app/pages/list_verb.dart';

class secondVerbsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'ພະຍັນຊະນະປະສົມ',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1,
        padding: EdgeInsets.only(top: 5),
        children: List.generate(
          itemListSecondVerbs.length,
          (index) {
            final item = itemListSecondVerbs[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          listOfFristVerb(subItemList: item.subItems)),
                );
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
                    item.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
