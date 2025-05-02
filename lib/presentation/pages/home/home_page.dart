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
      drawer: Drawer(
        child: ListView(children: [ListTile(title: Text("Menu"))]),
      ),
      appBar: AppBar(title: Text('Jakarta')),
      body: Obx(() => Column(
            children: [
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
              Expanded(
                child: ListView.builder(
                  itemCount: controller.properties.length,
                  itemBuilder: (context, index) {
                    return PropertyCard(property: controller.properties[index]);
                  },
                ),
              ),
            ],
          )),
    );
  }
}
