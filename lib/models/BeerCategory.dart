import 'package:beer_styles_bjcp/models/BeerSubcategory.dart';

class BeerCategory {
  final String name;
  final List<BeerSubcategory> subcategories;

  BeerCategory(this.name, this.subcategories);

  factory BeerCategory.fromJson(Map<String, dynamic> json) {
    return BeerCategory(
        json['name'],
        json['subcategory']
            .map<BeerSubcategory>((json) => new BeerSubcategory.fromJson(json))
            .toList());
  }

  Map<String, dynamic> toJson() => {'name': name, 'subcategory': subcategories};
}
