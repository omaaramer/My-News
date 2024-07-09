import 'package:flutter/material.dart';
import 'package:news/components/category_item.dart';
import 'package:news/models/category_model.dart';

class ListviewCtegory extends StatelessWidget {
  const ListviewCtegory({super.key});

  final List<CategoryModel> gategories = const [
    CategoryModel(image: 'assets/sport.jpeg', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/intertainment.jpeg', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/business.jpeg', categoryName: 'Health'),
    CategoryModel(image: 'assets/one.jpg', categoryName: 'Science'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Sports'),
    CategoryModel(
        image: 'assets/intertainment.jpeg', categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: gategories.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              gategory: gategories[index],
            );
          }),
    );
  }
}
