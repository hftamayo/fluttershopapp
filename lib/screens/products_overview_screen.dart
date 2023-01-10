import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Leaky Lindsay',
      description: 'greate image #1',
      price: 9.99,
      imageUrl:
          'https://media.cnn.com/api/v1/images/stellar/prod/120329100954-garbage-pail-kids-leaky-lindsay.jpg?q=w_1248,h_1732,x_0,y_0,c_fill/w_1280',
    ),
    Product(
      id: 'p2',
      title: 'Adam Bomb',
      description: 'greate image #2',
      price: 19.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/4/43/GPK_8a_adambomb.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Slobbie Robbie',
      description: 'greate image #3',
      price: 29.99,
      imageUrl:
          'https://media.cnn.com/api/v1/images/stellar/prod/120329091956-garbage-pail-kids-slobby-robbie.jpg?q=w_1248,h_1731,x_0,y_0,c_fill/w_1280',
    ),
    Product(
      id: 'p4',
      title: 'Nasty Nick',
      description: 'greate image #4',
      price: 39.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/1140/8354/files/Nasty_Nick_7112c9fe-7b97-462f-bc0c-16b37a7a9fa1_480x480.jpg?v=1637651435',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Morgan the Pirate Bargains'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(loadedProducts[i].id,
            loadedProducts[i].title, loadedProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
