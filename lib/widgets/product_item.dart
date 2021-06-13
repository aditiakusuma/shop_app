import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(
    this.id,
    this.title,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          onPressed: null,
          icon: Icon(Icons.favorite),
        ),
        trailing: IconButton(
          onPressed: null,
          icon: Icon(Icons.shopping_cart),
        ),
        backgroundColor: Colors.black54,
      ),
    );
  }
}
