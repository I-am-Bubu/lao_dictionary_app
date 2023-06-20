import 'package:flutter/material.dart';

class firstVerbListsPage extends StatefulWidget {
  const firstVerbListsPage({super.key});

  @override
  State<firstVerbListsPage> createState() => _firstVerbListsPageState();
}

class _firstVerbListsPageState extends State<firstVerbListsPage> {
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
