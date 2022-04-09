class DataModel {
  String name;
  String img;
  int price;
  int people;
  int stars;
  String description;
  String locations;
  DataModel(
      {required this.name,
      required this.img,
      required this.price,
      required this.people,
      required this.stars,
      required this.description,
      required this.locations});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        name: json["name"],
        img: json["img"],
        price: json["price"],
        people: json["people"],
        stars: json["stars"],
        description: json["description"],
        locations: json["locations"]);
  }
}
