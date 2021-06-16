import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_dsmc/ui/pages/home_page.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new HomePage(),
      title: new Text(
        'Welcome To News App',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.network(
        'https://flutter.io/images/catalog-widget-placeholder.png',
        height: 400,
        width: Get.width,
      ),
      backgroundColor: Colors.white,
      loaderColor: Colors.blue,
    );
  }
}
