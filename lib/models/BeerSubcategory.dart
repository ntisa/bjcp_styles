class BeerSubcategory {
  final String name;

  BeerSubcategory(this.name);

  factory BeerSubcategory.fromJson(Map<String, dynamic> json) {
    return new BeerSubcategory(json['name']);
  }

  Map<String, dynamic> toJson() => {'name': name};
}
