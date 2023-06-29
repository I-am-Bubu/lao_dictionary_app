import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/verbs.dart';


class detailOfFirstVerb extends StatelessWidget {
  final ListOfVerb subItem;

  detailOfFirstVerb({required this.subItem});

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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double screenWidth = MediaQuery.of(context).size.width;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: screenWidth,
                  height: 680,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(138, 148, 225, 1.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                subItem.subtitle,
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.volume_up,
                                  color: Colors.white,
                                  size: 30,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: screenWidth,
                          height: 600,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              subItem.details,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 80, 80, 80)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
