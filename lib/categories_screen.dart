import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_app/category_item.dart';
import 'package:recipe_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: Dummy_Categories.map(
          (catData) => CategoryItem(catData.id, catData.title, catData.color),
        ).toList(),
      ),
    );
  }
}
