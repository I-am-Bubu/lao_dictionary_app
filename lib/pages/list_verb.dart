import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/pages/detail_verb.dart';
import 'package:lao_dictionary_app/verbs.dart';

class listOfFristVerb extends StatelessWidget {
  final List<ListOfVerb> subItemList;

  listOfFristVerb({required this.subItemList});

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
      body: ListView.builder(
        itemCount: subItemList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 6, 4, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => detailOfFirstVerb(
                          subItem: subItemList[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              subItemList[index].subtitle,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: const Color.fromARGB(255, 83, 83, 83),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                          child: Text(
                            subItemList[index].subtitle,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 83, 83, 83),
                            ),
                          ),
                        ),
                      ],
                    ),
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
