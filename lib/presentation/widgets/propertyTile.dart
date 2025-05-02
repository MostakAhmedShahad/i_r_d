

import 'package:flutter/material.dart';
import 'package:i_r_d/domain/entities/property.dart';
import 'package:i_r_d/presentation/pages/detail/detail_page.dart';
import 'package:get/get.dart';

class PropertyTile extends StatelessWidget {
  final PropertyModel property;

  const PropertyTile({required this.property});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => DetailPage(), arguments: property); 
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                property.imageUrl,
                width: 100,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(property.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(property.location, style: TextStyle(color: Colors.grey[600])),
                  Text('${property.bedrooms} Bedroom · ${property.bathrooms} Bathroom'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
