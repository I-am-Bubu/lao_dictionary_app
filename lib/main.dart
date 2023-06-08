import 'package:flutter/material.dart';
import 'package:lao_dictionary_app/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "boonhome",
        primaryColor: Color.fromRGBO(138, 148, 225, 1.0),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white, // Set the desired color for the icons
          ),
        ),
        useMaterial3: true,
      ),
      home: const startPage(),
    );
  }
}
