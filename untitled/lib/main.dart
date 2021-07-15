import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/styles/app_color_style.dart';
import 'package:untitled/views/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white,
      ),
      home: MainPage(),
    );
  }
}