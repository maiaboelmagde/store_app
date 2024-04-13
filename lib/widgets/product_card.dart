import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 70,
              spreadRadius: 5,
              color: Colors.grey.withOpacity(0.5),
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
                    'name',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r'$225'),
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
            "https://www.christies.com/img/LotImages/2017/PAR/2017_PAR_14537_0087_000(sac_constance_24_en_cuir_swift_bleu_saphir_garniture_en_metal_argente).jpg",
            height: 150,
            width: 150,
          ),
        ),
      ],
    );
  }
}
