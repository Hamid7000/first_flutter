import 'package:first_flutter/home_page.dart';
import 'package:first_flutter/product_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailPage(
          productName: "HeadPhones",
          brandName: "Ronin",
          productDescription: "Our products are made using sustainable fibers or processes that reduce their environmental impact.",
          price: 220.88,
          imagePath: 'assets/ronin2.jpg'),
    );
  }
}



