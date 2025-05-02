import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_r_d/presentation/controllers/home_controller.dart';
import 'package:i_r_d/presentation/pages/home/widgets.dart';
import 'package:i_r_d/presentation/widgets/catagory_chip.dart';
 
import 'package:i_r_d/presentation/widgets/property_card.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_r_d/presentation/controllers/home_controller.dart';
import 'package:i_r_d/presentation/widgets/catagory_chip.dart';
import 'package:i_r_d/presentation/widgets/property_card.dart';

class HomePage extends StatelessWidget {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: ListView(children: [ListTile(title: Text("Menu"))])),
      appBar: AppBar(
        title: Text('Jakarta'),
        backgroundColor: Colors.blueAccent,
        actions: [IconButton(icon: Icon(Icons.notifications), onPressed: () {})],
      ),
      body: Obx(() => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12),

                  // Search bar
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search address, or near you',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.tune, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16),

                  // Category chips
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ['House', 'Apartment', 'Hotel room', 'Villa'].map((e) {
                        return CategoryChip(
                          label: e,
                          isSelected: controller.selectedCategory.value == e,
                          onTap: () => controller.changeCategory(e),
                        );
                      }).toList(),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Near from you
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Near from you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("See more", style: TextStyle(color: Colors.blue)),
                    ],
                  ),

                  SizedBox(height: 10),
                  PropertyCardList(properties: controller.properties),

                  SizedBox(height: 20),

                  // Best for you
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Best for you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("See more", style: TextStyle(color: Colors.blue)),
                    ],
                  ),

                  SizedBox(height: 10),

                  // Vertical property tiles
                  Column(
                    children: controller.properties
                        .map((property) => PropertyTile(property: property))
                        .toList(),
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ),
          )),
    );
  }
}

