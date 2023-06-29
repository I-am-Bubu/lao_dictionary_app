import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/pages/details_page.dart';


class listOfVerbsPage extends StatelessWidget {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => detailsPage()),
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(138, 148, 225, 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'ກ',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text(
                        'ແມ່ນພະຍັນຊະນະຕົວທຳອິດໃນພາລາວ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => detailsPage()),
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'ກ',
                          style: TextStyle(fontSize: 30, color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text(
                        'ແມ່ນພະຍັນຊະນະຕົວທຳອິດໃນພາລາວ',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
