import 'package:flutter/material.dart';
import 'package:market_ui_clone/models/product.dart';
import 'package:market_ui_clone/screens/home/components/product_detail.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(product.urlToImage,
                width: 115, height: 115, fit: BoxFit.cover),
          ),
          SizedBox(width: 16.0),
          ProductDetail(product: product),
        ],
      ),
    );
  }
}
