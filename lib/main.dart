import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_dsmc/ui/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
