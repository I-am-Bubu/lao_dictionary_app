import 'package:flutter/material.dart';


class thirdVerbListsPage extends StatefulWidget {
  const thirdVerbListsPage({super.key});

  @override
  State<thirdVerbListsPage> createState() => _thirdVerbListsPageState();
}

class _thirdVerbListsPageState extends State<thirdVerbListsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Text('verbs page'),
    );
  }
}