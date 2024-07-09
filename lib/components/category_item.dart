import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/screens/category_view.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.gategory});
  final CategoryModel gategory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                caltegory: gategory.categoryName,
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(gategory.image)),
        ),
        height: 100,
        width: 170,
        child: Center(
          child: Text(
            gategory.categoryName,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
