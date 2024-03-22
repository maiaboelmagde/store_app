import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/api.dart';

class CategoryProducts {
  Future<List<ProductModel>> getCategoryProducts(
      {required String category_name}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$category_name');

    List<ProductModel> produstsList = [];
    for (int i = 0; i < data.length; i++) {
      produstsList.add(ProductModel.fromJson(data[i]));
    }
    return produstsList;
  }
}
