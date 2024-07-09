import 'package:dio/dio.dart';
import 'package:news/models/article.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=0bb180fbe4d44e44bdb58f985d48b12c&category=$category');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> newsList = jsonData['articles'];

      List<ArticleModel> articlesList = [];
      for (var article in newsList) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (error) {
      return [];
    }
  }
}
