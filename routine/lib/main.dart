import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData.dark(),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
