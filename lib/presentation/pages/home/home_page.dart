import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_r_d/presentation/controllers/home_controller.dart';
import 'package:i_r_d/presentation/pages/home/widgets.dart';
import 'package:i_r_d/presentation/pages/menu/menu_page.dart';
import 'package:i_r_d/presentation/widgets/property_card.dart';
 

class HomePage extends StatelessWidget {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = size.width * 0.04;

    return Scaffold(
      drawer:   MenuPage(),
      body: Builder(
        builder: (context) => Obx(() => SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.02),

                    // Top bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Location",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: size.width * 0.03)),
                            Row(
                              children: [
                                Text("Jakarta",
                                    style: TextStyle(
                                        fontSize: size.width * 0.045,
                                        fontWeight: FontWeight.bold)),
                                const Icon(Icons.keyboard_arrow_down),
                              ],
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.notifications_none),
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
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: size.height * 0.015),

                    // Search bar
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search address, or near you',
                              prefixIcon: const Icon(Icons.search),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * 0.02),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.tune, color: Colors.white),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: size.height * 0.02),

                    // Category Chips
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: ['House', 'Apartment', 'Hotel room', 'Villa']
                            .map((category) {
                          final isSelected =
                              controller.selectedCategory.value == category;
                          return GestureDetector(
                            onTap: () => controller.changeCategory(category),
                            child: Container(
                              margin:
                                  EdgeInsets.only(right: size.width * 0.02),
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.04,
                                  vertical: size.height * 0.01),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.blueAccent
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: isSelected
                                      ? Colors.blueAccent
                                      : Colors.grey,
                                ),
                              ),
                              child: Text(
                                category,
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: size.width * 0.035,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),

                    SizedBox(height: size.height * 0.03),

                    // Near from you
                    _sectionHeader(context, "Near from you"),
                    SizedBox(height: size.height * 0.01),
                    PropertyCardList(properties: controller.properties),

                    SizedBox(height: size.height * 0.03),

                    // Best for you
                    _sectionHeader(context, "Best for you"),
                    SizedBox(height: size.height * 0.01),
                    Column(
                      children: controller.properties
                          .map((p) => Padding(
                                padding: EdgeInsets.only(
                                    bottom: size.height * 0.015),
                                child: PropertyTile(property: p),
                              ))
                          .toList(),
                    ),

                    SizedBox(height: size.height * 0.04),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Widget _sectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                  fontWeight: FontWeight.bold)),
          const Text("See more", style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }
}
