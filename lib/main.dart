import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
import 'routes/app_routes.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Real Estate UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      getPages: AppRoutes.routes,
    );
  }
}
 