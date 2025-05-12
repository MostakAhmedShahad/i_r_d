import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_r_d/domain/entities/property.dart';
  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_r_d/domain/entities/property.dart';

class PropertyCardList extends StatelessWidget {
  final List<PropertyModel> properties;

  const PropertyCardList({Key? key, required this.properties}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220, // height for horizontal cards
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: properties.length,
        itemBuilder: (context, index) {
          return PropertyCard(property: properties[index]);
        },
      ),
    );
  }
}

class PropertyCard extends StatelessWidget {
  final PropertyModel property;

  const PropertyCard({Key? key, required this.property}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/detail', arguments: property),
      child: Container(
        width: 280,
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black26)],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              // Background image
              Image.asset(
                property.imageUrl,
                height: 220,
                width: 280,
                fit: BoxFit.cover,
              ),

              // Dark overlay for readability
              Container(
                height: 220,
                width: 280,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),

              // Text on image
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      property.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [Shadow(blurRadius: 4, color: Colors.black45)],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      property.location,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                        shadows: [Shadow(blurRadius: 3, color: Colors.black38)],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
