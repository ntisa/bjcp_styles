class BeerSubcategory {
  final BeerStat originalGravity;
  final BeerStat finalGravity;
  final BeerStat IBU;
  final BeerStat ABV;

  BeerSubcategory(this.originalGravity, this.finalGravity, this.IBU, this.ABV);

  factory BeerSubcategory.fromJson(Map<String, dynamic> json) {
    return new BeerSubcategory(
        json['og'], json['fg'], json['ibu'], json['abv']);
  }

  Map<String, dynamic> toJson() =>
      {'og': originalGravity, 'fg': finalGravity, 'ibu': IBU, 'abv': ABV};
}

class BeerStat {
  final String low;
  final String high;

  BeerStat(this.low, this.high);

  factory BeerStat.fromJson(Map<String, dynamic> json) {
    return new BeerStat(json['low'], json['high']);
  }

  Map<String, dynamic> toJson() => {'low': low, 'high': high};
}
