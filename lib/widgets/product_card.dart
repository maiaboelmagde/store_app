import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 70,
              spreadRadius: 1,
              color: Colors.grey.withOpacity(0.2),
              offset: Offset(1, 1),
            )
          ]),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r'$' '${product.price}'),
                      Icon(Icons.favorite),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -20,
          left: 50,
          child: Image.network(
            product.image,
            height: 150,
            width: 150,
          ),
        ),
      ],
    );
  }
}
