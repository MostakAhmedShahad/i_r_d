import 'package:get/get.dart';
import 'package:i_r_d/presentation/controllers/detail_controller.dart';
import 'package:i_r_d/presentation/controllers/home_controller.dart';
import 'package:i_r_d/presentation/pages/detail/detail_page.dart';
import 'package:i_r_d/presentation/pages/home/home_page.dart';
import 'package:i_r_d/presentation/pages/menu/menu_page.dart';
 
 

class AppRoutes {
  static const home = '/';
  static const detail = '/detail';
  static const menu = '/menu';

  static final routes = [
    GetPage(
      name: home,
      page: () => HomePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => HomeController());
      }),
    ),
    GetPage(
      name: detail,
      page: () => DetailPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => DetailController());
      }),
    ),
    GetPage(
      name: menu,
      page: () => MenuPage(),
    ),
  ];
}
