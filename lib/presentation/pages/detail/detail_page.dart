import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You can retrieve property using Get.arguments
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network('https://via.placeholder.com/400x200'),
            Text("Dreamsville House", style: TextStyle(fontSize: 20)),
            Text("6 Bedroom · 4 Bathroom"),
            Text(
              "A 3-level house with a modern design...",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Rent Now"))
          ],
        ),
      ),
    );
  }
}
