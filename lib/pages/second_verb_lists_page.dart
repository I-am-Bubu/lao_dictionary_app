import 'package:flutter/material.dart';

class secondVerbListsPage extends StatefulWidget {
  const secondVerbListsPage({super.key});

  @override
  State<secondVerbListsPage> createState() => _secondVerbListsPageState();
}

class _secondVerbListsPageState extends State<secondVerbListsPage> {
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
