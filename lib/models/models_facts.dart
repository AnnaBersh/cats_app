class CatFacts {
  String fact;

  CatFacts({this.fact});

  factory CatFacts.fromJson(Map<String, dynamic> json) {
    return CatFacts(fact: json['fact']);
  }
}
