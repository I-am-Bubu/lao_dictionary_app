import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/pages/list_verb.dart';
import 'package:lao_dictionary_app/widgets/verbs.dart';

class secondVerbsPage extends StatelessWidget {
  final List<Verbs> itemList = [
    Verbs(
      title: "ຫງ",
      subItems: [
        ListOfVerb(
            subtitle: "ກ",
            details:
                "ພະຍັນຊະນະຕົວທຳອິດ ເອີ້ນວ່າຕົວກໍ, ຖືກຈັດໄວ້ໃນໝວດອັກສອນກາງ ແລະ ໃຊ້ເປັນຕົວສະກົດໄດ້ເຊັ່ນ: ມັກ, ປາກ, ໂລກ..."),
        ListOfVerb(subtitle: "ກະ", details: "Details for SubItem 1.2"),
      ],
    ),
    Verbs(
      title: "ຫຍ",
      subItems: [
        ListOfVerb(subtitle: "ຂ", details: "Details for SubItem 2.1"),
        ListOfVerb(subtitle: "ຂະ", details: "Details for SubItem 2.2"),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Theme.of(context).primaryColor,
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
        children: List.generate(
          itemList.length,
          (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => listOfFristVerb(
                          subItemList: itemList[index].subItems)),
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
                    itemList[index].title,
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
