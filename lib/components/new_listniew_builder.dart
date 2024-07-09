import 'package:flutter/material.dart';
import 'package:news/components/new_listview.dart';
import 'package:news/models/article.dart';
import 'package:news/services/news_servies.dart';

class NewsListviewBuilder extends StatefulWidget {
  const NewsListviewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListviewBuilder> createState() => _NewsListviewBuilderState();
}

class _NewsListviewBuilderState extends State<NewsListviewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsService().getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child:
                  Center(child: Text('Oops there was an error, try later ^_^')),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });

    // return isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? NewsListView(articles: articles)
    //         : const SliverToBoxAdapter(
    //             child: Center(
    //                 child: Text('Oops there was an error, try later ^_^')),
    //           );
  }
}
