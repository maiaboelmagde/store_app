import 'dart:developer';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/api.dart';

class AddProductService {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    });
    log('tyftrdfh');
    return ProductModel.fromJson(data);
  }
}
