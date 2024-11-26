import 'package:flutter/material.dart';
import 'components.dart';

class ProductDetailPage extends StatelessWidget {
  final String productName;
  final String brandName;
  final String productDescription;
  final double price;
  final String imagePath;

  const ProductDetailPage({
    required this.productName,
    required this.brandName,
    required this.productDescription,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: ProductDetailWidget(
          productName: productName,
          brandName: brandName,
          productDescription: productDescription,
          price: price,
          imagePath: imagePath,
        ),
      ),
    );
  }
}
