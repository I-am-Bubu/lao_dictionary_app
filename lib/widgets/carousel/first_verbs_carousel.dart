import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/widgets/verbs.dart';
import '../../pages/list_verb.dart';

class firstVerbsCarousel extends StatelessWidget {
  final List<Verbs> itemList = [
    Verbs(
      title: "ກ",
      subItems: [
        ListOfVerb(
            subtitle: "ກ",
            details:
                "ພະຍັນຊະນະຕົວທຳອິດ ເອີ້ນວ່າຕົວກໍ, ຖືກຈັດໄວ້ໃນໝວດອັກສອນກາງ ແລະ ໃຊ້ເປັນຕົວສະກົດໄດ້ເຊັ່ນ: ມັກ, ປາກ, ໂລກ..."),
        ListOfVerb(subtitle: "ກະ", details: "Details for SubItem 1.2"),
      ],
    ),
    Verbs(
      title: "ຂ",
      subItems: [
        ListOfVerb(subtitle: "ຂ", details: "Details for SubItem 2.1"),
        ListOfVerb(subtitle: "ຂະ", details: "Details for SubItem 2.2"),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => listOfFristVerb(
                            subItemList: itemList[index].subItems),
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
                        itemList[index].title,
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
