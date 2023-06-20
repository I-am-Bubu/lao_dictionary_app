import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  final List<String> items = ['Card 1', 'Card 2', 'Card 3', 'Card 4', 'Card 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Loop Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(items[index]),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.credit_card),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Handle card tap event
                print('Tapped on card: ${items[index]}');
              },
            ),
          );
        },
      ),
    );
  }
}
