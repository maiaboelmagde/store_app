class ProductModel {
  String id;
  String title;
  String description;
  String image;
  RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: jsonData['rating']);
  }
}

class RatingModel {
  double rate;
  num count;
  RatingModel({required this.count, required this.rate});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(count: jsonData['count'], rate: jsonData['rate']);
  }
}
