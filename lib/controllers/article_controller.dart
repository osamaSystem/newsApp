import 'dart:convert';

import 'package:get/get.dart';
import 'package:news_dsmc/models/article_model.dart';
import 'package:news_dsmc/services/api_service.dart';

class ArticleController extends GetxController {
  List<Article> articleList = [];
  bool loaded = false;

  ArticleController() {
    getArticle();
  }

  getArticle() async {
    ApiService().getArticle().then((response) {
      Map<String, dynamic> json = jsonDecode(response);
      List<dynamic> body = json['articles'];
      articleList = body.map((dynamic item) => Article.fromJson(item)).toList();
    }).whenComplete(() {
      if (articleList.length > 0) loaded = true;
      update();
    });
    update();
  }
}
