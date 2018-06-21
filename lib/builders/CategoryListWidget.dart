import 'package:beer_styles_bjcp/builders/SubcategoryListViewWidget.dart';
import 'package:beer_styles_bjcp/models/BeerCategory.dart';
import 'package:flutter/material.dart';

Widget buildBeerCategoryListViewWidget(
    BuildContext context, AsyncSnapshot snapshot) {
  List<BeerCategory> values = snapshot.data;
  return ListView.builder(
      itemCount: values.length,
      itemBuilder: (context, int index) {
        List<Widget> subcategoryListItems = List<Widget>();
        for (int i = 0; i < values[index].subcategories.length; i++) {
          subcategoryListItems.add(buildSubcategoryListViewWidget(
              context, values[index].subcategories[i]));
        }

        return ExpansionTile(
          title: Text(values[index].name),
          children: subcategoryListItems,
        );
      });
}
