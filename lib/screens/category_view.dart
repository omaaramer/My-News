import 'package:flutter/material.dart';
import 'package:news/components/new_listniew_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.caltegory});
  final String caltegory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: const Text(''),
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/worldnews.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        NewsListviewBuilder(
          category: caltegory,
        ),
      ]),
    );
  }
}
