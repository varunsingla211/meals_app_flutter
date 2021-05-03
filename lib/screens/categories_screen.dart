import 'package:flutter/material.dart';
import 'package:mealsapp/category_item.dart';
import 'package:mealsapp/models/dummy_data.dart';
import 'package:mealsapp/models/meal.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES
          .map((cat) => CategoryItem(cat.title, cat.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
