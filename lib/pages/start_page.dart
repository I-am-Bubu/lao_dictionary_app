import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/widgets/bottom_nav_.dart';

class startPage extends StatefulWidget {
  const startPage({super.key});

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(138, 148, 225, 1.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CachedNetworkImage(
                imageUrl:
                    'https://firebasestorage.googleapis.com/v0/b/saengthong-clinic.appspot.com/o/Bubu__1_-removebg-preview.png?alt=media&token=ec01ba17-3efb-4a77-a553-c59b7a3b2dce&_gl=1*ybjvvk*_ga*NDczODAwMjc5LjE2NTg4NDYyNjk.*_ga_CW55HF8NVT*MTY4NTUwNjcxMS43LjEuMTY4NTUwNjc4MS4wLjAuMA..',
                width: 230,
                height: 230,
              ),
            ),
            Container(
              child: Text(
                'ວັດຈະນານຸກົມ',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'ພາສາ',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: "boonhome",
                      ),
                    ),
                    TextSpan(
                      text: 'ລາວ',
                      style: TextStyle(
                        fontSize: 55,
                        color: Color.fromRGBO(66, 105, 206, 1.0),
                        fontFamily: "boonhome",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 2, 5, 0),
              child: Container(
                child: Text(
                  'ເພື່ອໃຫ້ໄວໜຸ່ມລາວສາມາດຄົ້ນຫາຄຳສັບທີ່ຕ້ອງການຂຽນພາສາລາວໃຫ້ຖືກຕ້ອງ',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 350,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(66, 105, 206, 1.0))),
                  child: Text(
                    'ເລີ່ມຕົ້ນ >',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => bottomNav()),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
