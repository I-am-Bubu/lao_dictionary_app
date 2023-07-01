import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'ນາງ ທິບທິດາ ກໍຊານົນ',
      'role': 'ອອກແບບ&ຂຽນໂຄດ',
      'class': '4COM1',
      'facbookLink': 'https://www.facebook.com/thipthidar.korsarnonh/',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/Screenshot%202023-06-22%20at%202.51.28%20PM.png?alt=media&token=0ed1385a-ec7c-442d-9c04-897f3a5fd183'
    },
    {
      'name': 'ນາງ ພຸດທະສອນ ເພັງມີໄຊ',
      'role': 'ຂຽນຄອນເທັນ',
      'class': '4COM1',
      'facbookLink': 'https://www.facebook.com/thipthidar.korsarnonh/',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/Screenshot%202023-06-29%20at%204.10.57%20PM.png?alt=media&token=5e885c97-b3e2-4c25-ab40-818578086705'
    },
    {
      'name': 'ນາງ ໄມຄຳ ສີວົງສານ',
      'role': 'ເຮັດສະໄລ້ພຣີເຊັ້ນ',
      'class': '4COM1',
      'facbookLink': 'https://www.facebook.com/thipthidar.korsarnonh/',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/mai.jpg?alt=media&token=f15381f8-5cf5-4341-9a23-2e5445fa5a13'
    },
    {
      'name': 'ທ້າວ ໄພລັດ ລັດດາວັນ',
      'role': 'ເຮັດເອກະສານ',
      'class': '4COM1',
      'facbookLink': 'https://www.facebook.com/thipthidar.korsarnonh/',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/%E0%BB%84%E0%BA%9E%E0%BA%A5%E0%BA%B1%E0%BA%94%20%E0%BA%A5%E0%BA%B1%E0%BA%94%E0%BA%94%E0%BA%B2%E0%BA%A7%E0%BA%B1%E0%BA%99.jpg?alt=media&token=97bf34a9-4a43-45e5-9d9a-cf5c65a9a069'
    },
    {
      'name': 'ທ້າວ ນິກທະວົງ',
      'role': 'ຂຽນຄອນເທັນ',
      'class': '4COM1',
      'facbookLink': 'https://www.facebook.com/thipthidar.korsarnonh/',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/319955267_218154517242952_1792333422015785808_n.jpg?alt=media&token=a642ed96-fce3-44cc-8504-185798249af1'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'ກ່ຽວກັບພວກເຮົາ',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> currentItem = items[index];
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 165,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Container(
                      child: CachedNetworkImage(
                        imageUrl: '${currentItem['image']}',
                        imageBuilder: (context, imageProvider) => Container(
                          width: 130,
                          height: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 5, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ຊື່: ${currentItem['name']}',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'ໜ້າທີ່: ${currentItem['role']}',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'ຫ້ອງ: ${currentItem['class']}',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'ຊ່ອງທາງການຕິດຕໍ່:',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.facebook,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
