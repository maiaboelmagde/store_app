import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/category_products.dart';
import 'package:store_app/services/get_all_products_service.dart';

class TestApiView extends StatelessWidget {
  const TestApiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future:
          CategoryProducts().getCategoryProducts(category_name: 'electronics'),
      builder: (context, snapshot) {
        return snapshot.hasData
            ? Column(
                children: [
                  Center(
                    child: Text(
                      (snapshot.data?.length).toString(),
                      style: TextStyle(fontSize: 60),
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, indx) {
                          return Column(children: [
                            Text(snapshot.data![indx].title),
                            Divider(color: Colors.black)
                          ]);
                        }),
                  )
                ],
              )
            : const Center(
                child: Text(
                  'Loding . . .',
                  style: TextStyle(fontSize: 60),
                ),
              );
      },
    ));
  }
}
