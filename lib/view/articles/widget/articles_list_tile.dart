import 'package:dr_boutros/data/articles/articles.lists.dart';
import 'package:dr_boutros/view/articles/widget/articles_view_body.dart';
import 'package:flutter/material.dart';

class ArticlesListTile extends StatelessWidget {
  const ArticlesListTile({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          textDirection: TextDirection.rtl,
          ArticlesLists.articale[index].title),
      leading: Image.asset(ArticlesLists.articale[index].image),
      subtitle: Text(
          textDirection: TextDirection.rtl,
          maxLines: 1,
          style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 10,
              color: Colors.grey),
          ArticlesLists.articale[index].content),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ArticlesViewBody(articlesModel: ArticlesLists.articale[index]);
        }));
      },
    );
  }
}
