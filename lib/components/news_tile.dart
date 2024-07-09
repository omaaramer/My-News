import 'package:flutter/material.dart';
import 'package:news/models/article.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: articleModel.image != null
              ? Image.network(articleModel.image!)
              : Container(
                  height: 230,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/technology.jpeg'),
                    ),
                  ),
                ),
        ),
      ),
      ListTile(
        title: Text(
          articleModel.title,
          textAlign: TextAlign.right,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        subtitle: Text(
          articleModel.subtitle ?? '',
          maxLines: 2,
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(),
        ),
      ),
    ]);
  }
}
