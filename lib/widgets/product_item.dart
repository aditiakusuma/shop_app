import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product.dart';

import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // const ProductItem(
  //   this.id,
  //   this.title,
  //   this.imageUrl,
  // );

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                arguments: product.id);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            onPressed: () {
              product.toggleFavoriteStatus();
            },
            icon: Icon(product.isFavorite
                ? Icons.favorite
                : Icons.favorite_border_outlined),
            color: Colors.redAccent,
          ),
          trailing: IconButton(
            onPressed: null,
            icon: Icon(Icons.shopping_cart),
          ),
          backgroundColor: Colors.black87,
        ),
      ),
    );
  }
}
