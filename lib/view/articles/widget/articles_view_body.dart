import 'package:dr_boutros/models/articles_model.dart';
import 'package:flutter/material.dart';

class ArticlesViewBody extends StatelessWidget {
  const ArticlesViewBody({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;
  @override
  Widget build(BuildContext context) {
    num size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8, bottom: 8),
          child: Column(
            spacing: 5,
            textDirection: TextDirection.rtl,
            children: [
              Text(
                textDirection: TextDirection.rtl,
                articlesModel.title,
                style: TextStyle(fontSize: size * 0.05),
              ),
              Image.asset(articlesModel.image),
              SelectableText(
                textAlign: TextAlign.justify,
                articlesModel.content,
                style: TextStyle(fontSize: size * 0.044),
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
