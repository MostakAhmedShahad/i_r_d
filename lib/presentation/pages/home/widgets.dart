import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_r_d/domain/entities/property.dart';

class PropertyTile extends StatelessWidget {
  final PropertyModel property;

  const PropertyTile({Key? key, required this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/detail', arguments: property),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                property.imageUrl,
                height: 80,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    property.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Rp. ${property.price.toStringAsFixed(0)} / Year",
                    style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.king_bed, size: 16, color: Colors.grey[600]),
                      SizedBox(width: 4),
                      Text("${property.bedrooms} Bedroom"),
                      SizedBox(width: 12),
                      Icon(Icons.bathtub, size: 16, color: Colors.grey[600]),
                      SizedBox(width: 4),
                      Text("${property.bathrooms} Bathroom"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
