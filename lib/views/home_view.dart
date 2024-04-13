import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Container(
        height: 140,
        width: 180,
        decoration: BoxDecoration(),
        child: Card(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
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
    );
  }
}
