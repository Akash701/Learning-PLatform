class Learning {
  final String name;
  final String images;
  final double rating;
  final String cost;
  Learning({this.name, this.images, this.cost, this.rating});

  factory Learning.fromJson(dynamic json) {
    return Learning(
        name: json['name'][0]['banner_title'] as String,
        images: json['banner'][0]['banner'] as String,
        rating: json["horizontal_slider"][0]['data']['rating'] as double,
        cost: json["horizontal_slider"][0]['data']['price'] as String);
  }
  static List<Learning> learningFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Learning.fromJson(data);
    }).toList();
  }
}
