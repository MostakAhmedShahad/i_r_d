import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_r_d/presentation/controllers/home_controller.dart';
import 'package:i_r_d/presentation/pages/home/widgets.dart';
import 'package:i_r_d/presentation/pages/menu/menu_page.dart';
import 'package:i_r_d/presentation/widgets/catagory_chip.dart';
import 'package:i_r_d/presentation/widgets/property_card.dart';

class HomePage extends StatelessWidget {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuPage(),
      body: Builder(
        builder: (context) => Obx(() => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   // SizedBox(height: 40),

                    // Location Row
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Location",
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 12)),
                              Row(
                                children: [
                                  Text("Jakarta",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                  Icon(Icons.keyboard_arrow_down,
                                      color: Colors.black),
                                ],
                              ),
                            ],
                          ),

                          // Notification with red dot opens drawer
                          Stack(
                            children: [
                              IconButton(
                                icon: Icon(Icons.notifications_none,
                                    color: Colors.black),
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                              ),
                              Positioned(
                                right: 8,
                                top: 8,
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),

                    // Search bar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search address, or near you',
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
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
                    ),

                    SizedBox(height: 16),

                    // Category chips
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: ['House', 'Apartment', 'Hotel room', 'Villa']
                            .map((e) {
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
                        Text("Near from you",
                            style:
                                TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                        Text("Best for you",
                            style:
                                TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}
