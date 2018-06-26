class BeerSubcategory {
  final String name;
  final String impression;
  final String aroma;
  final String appearance;
  final String flavor;
  final String mouthfeel;
  final String comments;
  final String history;
  final String ingredients;
  final String comparison;
  final String examples;
  final String tags;

  BeerSubcategory(
      this.name,
      this.impression,
      this.aroma,
      this.appearance,
      this.flavor,
      this.mouthfeel,
      this.comments,
      this.history,
      this.ingredients,
      this.comparison,
      this.examples,
      this.tags);

  factory BeerSubcategory.fromJson(Map<String, dynamic> json) {
    return new BeerSubcategory(
        json['name'],
        json['impression'],
        json['aroma'],
        json['appearance'],
        json['flavor'],
        json['mouthfeel'],
        json['comments'],
        json['history'],
        json['ingredients'],
        json['comparison'],
        json['examples'],
        json['tags']);
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'impression': impression,
        'aroma': aroma,
        'appearance': appearance,
        'flavor': flavor,
        'mouthfeel': mouthfeel,
        'comments': comments,
        'history': history,
        'ingredients': ingredients,
        'comparison': comparison,
        'examples': examples,
        'tags': tags
      };
}
