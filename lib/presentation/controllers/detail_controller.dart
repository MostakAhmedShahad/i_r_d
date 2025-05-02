import 'package:get/get.dart';
import 'package:i_r_d/domain/entities/property.dart';
 

class DetailController extends GetxController {
  late PropertyModel property;

  @override
  void onInit() {
    super.onInit();
    property = Get.arguments;
  }
}