import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'ນາງ ທິບທິດາ ກໍຊານົນ',
      'role': 'Design&Coding',
      'class': '4COM1',
      'facbookLink': 'https://www.facebook.com/thipthidar.korsarnonh/',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/Screenshot%202023-06-22%20at%202.51.28%20PM.png?alt=media&token=0ed1385a-ec7c-442d-9c04-897f3a5fd183'
    },
    {
      'name': 'ນາງ ພຸດທະສອນ ເພັງມີໄຊ',
      'role': 'Analytics',
      'class': '4COM1',
      'facbookLink': 'https://www.facebook.com/thipthidar.korsarnonh/',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/Screenshot%202023-06-29%20at%204.10.57%20PM.png?alt=media&token=5e885c97-b3e2-4c25-ab40-818578086705'
    },
    {
      'name': 'ນາງ ໄມຄຳ ສີວົງສານ',
      'role': 'Do Presentation',
      'class': '4COM1',
      'facbookLink': 'https://www.facebook.com/thipthidar.korsarnonh/',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/mai.jpg?alt=media&token=f15381f8-5cf5-4341-9a23-2e5445fa5a13'
    },
    {
      'name': 'ທ້າວ ໄພລັດ ລັດດາວັນ',
      'role': 'Design&Coding',
      'class': '4COM1',
      'facbookLink': 'https://www.facebook.com/thipthidar.korsarnonh/',
      'image':
          'https://scontent.fvte2-3.fna.fbcdn.net/v/t1.6435-9/140182083_830252734198829_8613756720835514898_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE28c4gPcEYjtQqG38c4juvFEjoTC_r9MoUSOhML-v0yvuZwcPgr-RKhl9uoN-AwVIV1CTuWDOO4POo3TcfU65p&_nc_ohc=MAHk4YcX8dcAX-up65_&_nc_oc=AQmasRZ4diHa2fxnkuHk0j6jDroYLOJrpeJihBReZa3TBUqA8r-clsv_RiHjvBwztTE&_nc_ht=scontent.fvte2-3.fna&oh=00_AfBNUkRw2PrPIrbvmGvx0mb-_ppzCPtkf1Wh4Bi7n3mo_A&oe=64B9FBF1'
    },
    {
      'name': 'ທ້າວ ນິກທະວົງ',
      'role': 'Design&Coding',
      'class': '4COM1',
      'facbookLink': 'https://www.facebook.com/thipthidar.korsarnonh/',
      'image':
          'https://scontent.fvte2-3.fna.fbcdn.net/v/t1.6435-9/140182083_830252734198829_8613756720835514898_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE28c4gPcEYjtQqG38c4juvFEjoTC_r9MoUSOhML-v0yvuZwcPgr-RKhl9uoN-AwVIV1CTuWDOO4POo3TcfU65p&_nc_ohc=MAHk4YcX8dcAX-up65_&_nc_oc=AQmasRZ4diHa2fxnkuHk0j6jDroYLOJrpeJihBReZa3TBUqA8r-clsv_RiHjvBwztTE&_nc_ht=scontent.fvte2-3.fna&oh=00_AfBNUkRw2PrPIrbvmGvx0mb-_ppzCPtkf1Wh4Bi7n3mo_A&oe=64B9FBF1'
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
