import 'package:flutter/material.dart';
import 'package:kanban_studio/colors.dart';
import 'package:kanban_studio/redux/data/news_entity.dart';
import 'package:kanban_studio/widgets/news.dart';


class NewsList extends StatelessWidget {

  final List<NewsEntity> news;

  NewsList(this.news);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          itemCount: news.length, 
          itemBuilder: (context, index) {

            return  News( text: news[index].text, imgUrl: news[index].imgUrl, );

          },
          separatorBuilder: (context, index) {

            return const SizedBox(height: 10);

          },
        );
  }
}
