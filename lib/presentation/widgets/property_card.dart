import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_r_d/domain/entities/property.dart';
 

class PropertyCard extends StatelessWidget {
  final PropertyModel property;

  const PropertyCard({Key? key, required this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/detail', arguments: property),
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(property.imageUrl, height: 180, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(property.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(property.location),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}