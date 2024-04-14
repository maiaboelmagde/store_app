import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_products_service.dart';
import 'package:store_app/widgets/product_card.dart';

class HomeView extends StatelessWidget {
  final String id = 'homePage';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Trend',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartShopping,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: FutureBuilder(
                future: AllProductsService().getAllProducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ProductModel> productsList = snapshot.data!;
                    return GridView.builder(
                      clipBehavior: Clip.none,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 25,
                      ),
                      itemCount: productsList.length,
                      itemBuilder: ((context, index) => ProductCard(
                            product: productsList[index],
                          )),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                })));
  }
}
