import 'package:flutter/material.dart';


class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Text('profile'),
    );
  }
}
