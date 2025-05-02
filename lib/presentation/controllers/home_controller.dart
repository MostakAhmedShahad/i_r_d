import 'package:get/get.dart';
import 'package:i_r_d/domain/entities/property.dart';
 

class HomeController extends GetxController {
  var selectedCategory = 'House'.obs;
  var properties = <PropertyModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    properties.value = PropertyModel.sampleList();
  }

  void changeCategory(String category) {
    selectedCategory.value = category;
    // In real app, you'd filter property list
  }
}
