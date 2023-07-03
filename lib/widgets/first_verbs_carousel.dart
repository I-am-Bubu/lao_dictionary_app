import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/data/first_verb.dart';
import '../../pages/list_verb.dart';

class firstVerbsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemListFirstVerbs.length,
        itemBuilder: (context, index) {
          final item = itemListFirstVerbs[index];
          return Column(
            children: [
              Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            listOfFristVerb(subItemList: item.subItems),
                      ),
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
                )
              ]),
            ],
          );
        },
      ),
    );
  }
}
