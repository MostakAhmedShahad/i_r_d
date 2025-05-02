import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_r_d/presentation/controllers/detail_controller.dart';
import 'package:i_r_d/presentation/controllers/home_controller.dart';
 
 

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => DetailController());
    Get.lazyPut(() => MenuController());
  }
}
