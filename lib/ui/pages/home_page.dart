import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_dsmc/controllers/article_controller.dart';
import 'package:news_dsmc/ui/widgets/article_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ArticleController());

    return GetBuilder<ArticleController>(
      init: ArticleController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("News App", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
        ),
        body: controller.loaded
            ? ListView.builder(
                itemCount: controller.articleList.length,
                itemBuilder: (context, index) =>
                    articleWidget(controller.articleList[index], context),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
