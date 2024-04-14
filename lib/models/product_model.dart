class ProductModel {
  int id;
  num price;
  String title;
  String description;
  String image;
  RatingModel rating;

  ProductModel(
      {required this.id,
      required this.price,
      required this.title,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        price: jsonData['price'],
        title: jsonData['title'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  num rate;
  num count;
  RatingModel({required this.count, required this.rate});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(count: jsonData['count'], rate: jsonData['rate']);
  }
}
